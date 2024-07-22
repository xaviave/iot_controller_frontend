import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/services/communication_service.dart';

abstract class BaseProductEvent {}

class ServerChangedEvent extends BaseProductEvent {
  final LedPanelCommunication ledPanelGrpcClient;
  final CoffeeMachineCommunication coffeeMachineGrpcClient;

  ServerChangedEvent({
    required this.ledPanelGrpcClient,
    required this.coffeeMachineGrpcClient,
  });
}

class GetBaseProductListEvent extends BaseProductEvent {
  final List<BaseProduct>? products;

  GetBaseProductListEvent(this.products);
}

class GetBaseProductEvent extends BaseProductEvent {
  final BaseProduct product;
  final List<BaseProduct> products;

  GetBaseProductEvent({required this.product, required this.products});
}

class RetrieveBaseProductEvent extends BaseProductEvent {
  final BaseProduct product;
  final List<BaseProduct> products;

  RetrieveBaseProductEvent({required this.product, required this.products});
}

class CreateBaseProductEvent extends BaseProductEvent {
  final BaseProduct product;
  final List<BaseProduct> products;

  CreateBaseProductEvent({required this.product, required this.products});
}

class UpdateBaseProductEvent extends BaseProductEvent {
  final BaseProduct product;
  final List<BaseProduct> products;

  UpdateBaseProductEvent({required this.product, required this.products});
}

class PartialUpdateBaseProductEvent extends BaseProductEvent {
  final BaseProduct product;
  Map<String, dynamic> fields;
  final List<BaseProduct> products;

  PartialUpdateBaseProductEvent(
      {required this.product, required this.fields, required this.products});
}

class DestroyBaseProductEvent extends BaseProductEvent {
  final BaseProduct product;
  final List<BaseProduct> products;

  DestroyBaseProductEvent({required this.product, required this.products});
}

sealed class BaseProductState {
  const BaseProductState();

  String get message => "";
  BaseProduct? get product => null;
  List<BaseProduct> get products => [];
}

class BaseProductListInitial extends BaseProductState {}

class BaseProductLoading extends BaseProductState {}

class BaseProductListSuccess extends BaseProductState {
  final List<BaseProduct> _products;

  const BaseProductListSuccess(this._products);

  @override
  List<BaseProduct> get products => _products;
}

class BaseProductListError extends BaseProductState {
  final String _message;

  const BaseProductListError(this._message);

  @override
  String get message => _message;
}

class GetBaseProductSuccess extends BaseProductState {
  final BaseProduct _product;
  final List<BaseProduct> _products;

  const GetBaseProductSuccess(this._product, this._products);

  @override
  BaseProduct? get product => _product;
  @override
  List<BaseProduct> get products => _products;
}

class GetBaseProductError extends BaseProductState {
  final String _message;

  const GetBaseProductError(this._message);

  @override
  String get message => _message;
}

class RetrieveBaseProductSuccess extends BaseProductState {
  final BaseProduct _product;
  final List<BaseProduct> _products;

  const RetrieveBaseProductSuccess(this._product, this._products);

  @override
  BaseProduct? get product => _product;
  @override
  List<BaseProduct> get products => _products;
}

class RetrieveBaseProductError extends BaseProductState {
  final String _message;

  const RetrieveBaseProductError(this._message);

  @override
  String get message => _message;
}

class CreateBaseProductSuccess extends BaseProductState {
  final String _message;
  final BaseProduct _product;
  final List<BaseProduct> _products;

  const CreateBaseProductSuccess(this._message, this._product, this._products);

  @override
  String get message => _message;
  @override
  BaseProduct? get product => _product;
  @override
  List<BaseProduct> get products => _products;
}

class CreateBaseProductError extends BaseProductState {
  final String _message;

  const CreateBaseProductError(this._message);

  @override
  String get message => _message;
}

class UpdateBaseProductSuccess extends BaseProductState {
  final String _message;
  final BaseProduct _product;
  final List<BaseProduct> _products;

  const UpdateBaseProductSuccess(this._message, this._product, this._products);

  @override
  String get message => _message;
  @override
  BaseProduct? get product => _product;
  @override
  List<BaseProduct> get products => _products;
}

class UpdateBaseProductError extends BaseProductState {
  final String _message;
  final String productName;

  const UpdateBaseProductError(this._message, this.productName);

  @override
  String get message => _message;
}

class DestroyBaseProductSuccess extends BaseProductState {
  final String _message;
  final List<BaseProduct> _products;

  const DestroyBaseProductSuccess(this._message, this._products);

  @override
  String get message => _message;
  @override
  List<BaseProduct> get products => _products;
}

class DestroyBaseProductError extends BaseProductState {
  final String _message;

  const DestroyBaseProductError(this._message);

  @override
  String get message => _message;
}

class BaseProductGRPCBloc extends Bloc<BaseProductEvent, BaseProductState> {
  late LedPanelCommunication ledPanelGrpcClient;
  late CoffeeMachineCommunication coffeeMachineGrpcClient;

  BaseProductGRPCBloc(SettingsState state) : super(BaseProductListInitial()) {
    on<ServerChangedEvent>(onServerChangedEvent);
    add(ServerChangedEvent(
        ledPanelGrpcClient: LedPanelCommunication(
            serverName: state.serverName, serverPort: state.serverPort),
        coffeeMachineGrpcClient: CoffeeMachineCommunication(
            serverName: state.serverName, serverPort: state.serverPort)));

    on<GetBaseProductListEvent>(onGetBaseProductListEvent);
    on<GetBaseProductEvent>(onGetBaseProductEvent);
    on<RetrieveBaseProductEvent>(onRetrieveBaseProductEvent);
    on<CreateBaseProductEvent>(onCreateBaseProductEvent);
    on<UpdateBaseProductEvent>(onUpdateBaseProductEvent);
    on<PartialUpdateBaseProductEvent>(onPartialUpdateBaseProductEvent);
    on<DestroyBaseProductEvent>(onDestroyBaseProductEvent);
  }

  void onServerChangedEvent(
      ServerChangedEvent event, Emitter<BaseProductState> emit) {
    ledPanelGrpcClient = event.ledPanelGrpcClient;
    coffeeMachineGrpcClient = event.coffeeMachineGrpcClient;
  }

  Future<List<LedPanel>> getLedPanelItems() async {
    var responseLedPanel = await ledPanelGrpcClient.list();
    return responseLedPanel.results
        .map((e) => LedPanel.fromResponse(e))
        .toList();
  }

  Future<List<CoffeeMachine>> getCoffeeMachineItems() async {
    var responseCoffeeMachine = await coffeeMachineGrpcClient.list();
    return responseCoffeeMachine.results
        .map((e) => CoffeeMachine.fromResponse(e))
        .toList();
  }

  void onGetBaseProductListEvent(
      GetBaseProductListEvent event, Emitter<BaseProductState> emit) async {
    try {
      // if empty, query, else use the products given
      if (event.products == null) {
        emit(BaseProductLoading());
        emit(BaseProductListSuccess(
            [...await getLedPanelItems(), ...await getCoffeeMachineItems()]));
      } else {
        emit(BaseProductListSuccess(event.products!));
      }
    } catch (error) {
      emit(BaseProductListError(error.toString()));
    }
  }

  void onGetBaseProductEvent(
      GetBaseProductEvent event, Emitter<BaseProductState> emit) async {
    emit(GetBaseProductSuccess(event.product, event.products));
  }

  void onRetrieveBaseProductEvent(
      RetrieveBaseProductEvent event, Emitter<BaseProductState> emit) async {
    try {
      BaseProduct p;
      if (event.product is CoffeeMachine) {
        CoffeeMachineResponse response =
            await coffeeMachineGrpcClient.retrieve(event.product.id);

        p = CoffeeMachine.fromResponse(response);
      } else {
        LedPanelResponse response =
            await ledPanelGrpcClient.retrieve(event.product.id);

        p = LedPanel.fromResponse(response);
      }

      event.products[
          event.products.indexWhere((element) => element.id == p.id)] = p;
      emit(RetrieveBaseProductSuccess(p, event.products));
    } catch (error) {
      emit(RetrieveBaseProductError(error.toString()));
    }
  }

  void onCreateBaseProductEvent(
      CreateBaseProductEvent event, Emitter<BaseProductState> emit) async {
    try {
      if (event.product is CoffeeMachine) {
        var response = await coffeeMachineGrpcClient
            .create(event.product as CoffeeMachine);
        CoffeeMachine product = CoffeeMachine.fromResponse(response);

        emit(CreateBaseProductSuccess(
            "success", product, event.products..add(product)));
      } else {
        var response =
            await ledPanelGrpcClient.create(event.product as LedPanel);
        LedPanel product = LedPanel.fromResponse(response);

        emit(CreateBaseProductSuccess(
            "success", product, event.products..add(product)));
      }
    } catch (error) {
      emit(CreateBaseProductError(error.toString()));
    }
  }

  void onUpdateBaseProductEvent(
      UpdateBaseProductEvent event, Emitter<BaseProductState> emit) async {
    try {
      BaseProduct p;

      if (event.product is CoffeeMachine) {
        var response = await coffeeMachineGrpcClient
            .update(event.product as CoffeeMachine);
        p = CoffeeMachine.fromResponse(response);
      } else {
        var response =
            await ledPanelGrpcClient.update(event.product as LedPanel);
        p = LedPanel.fromResponse(response);
      }

      event.products[
          event.products.indexWhere((element) => element.id == p.id)] = p;
      emit(UpdateBaseProductSuccess("success", p, event.products));
    } catch (error) {
      emit(UpdateBaseProductError(error.toString(), event.product.name));
    }
  }

  void onPartialUpdateBaseProductEvent(PartialUpdateBaseProductEvent event,
      Emitter<BaseProductState> emit) async {
    try {
      BaseProduct p;
      if (event.product is CoffeeMachine) {
        var response = await coffeeMachineGrpcClient.partialUpdate(
            event.product as CoffeeMachine, event.fields);
        p = CoffeeMachine.fromResponse(response);
      } else {
        var response = await ledPanelGrpcClient.partialUpdate(
            event.product as LedPanel, event.fields);
        p = LedPanel.fromResponse(response);
      }
      event.products[
          event.products.indexWhere((element) => element.id == p.id)] = p;
      emit(UpdateBaseProductSuccess("success", p, event.products));
    } catch (error) {
      emit(UpdateBaseProductError(error.toString(), event.product.name));
    }
  }

  void onDestroyBaseProductEvent(
      DestroyBaseProductEvent event, Emitter<BaseProductState> emit) async {
    try {
      if (event.product is CoffeeMachine) {
        await coffeeMachineGrpcClient.destroy(event.product.id);
      } else {
        await ledPanelGrpcClient.destroy(event.product.id);
      }

      event.products.removeWhere((item) => item.id == event.product.id);
      emit(DestroyBaseProductSuccess(
          "Successfully deleted product", event.products));
    } catch (error) {
      emit(DestroyBaseProductError(error.toString()));
    }
  }
}
