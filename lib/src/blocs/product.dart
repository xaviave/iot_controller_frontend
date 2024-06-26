import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/services/communication_service.dart';

abstract class BaseProductEvent {}

class ServerChangedEvent extends BaseProductEvent {
  final LedPanelCommunication ledPanelGrpcClient;
  final CoffeeMachineCommunication coffeeMachineGrpcClient;

  ServerChangedEvent(
      {required this.ledPanelGrpcClient,
      required this.coffeeMachineGrpcClient});
}

class GetBaseProductListEvent extends BaseProductEvent {}

class UpdateBaseProductEvent extends BaseProductEvent {
  final BaseProduct product;

  UpdateBaseProductEvent({required this.product});
}

sealed class BaseProductState {
  const BaseProductState();

  Map<String, BaseProduct> get products => {};
}

class BaseProductListInitial extends BaseProductState {}

class BaseProductListSuccess extends BaseProductState {
  final Map<String, LedPanel> _ledPanels;
  final Map<String, CoffeeMachine> _coffeeMachines;

  const BaseProductListSuccess(this._ledPanels, this._coffeeMachines);

  Map<String, LedPanel> get ledPanels => _ledPanels;
  Map<String, CoffeeMachine> get coffeeMachines => _coffeeMachines;
  Map<String, BaseProduct> get products => {..._ledPanels, ..._coffeeMachines};
}

class BaseProductListError extends BaseProductState {
  final String message;

  const BaseProductListError(this.message);

  String get errorMessage => message;
}

class UpdateBaseProductEventSuccess extends BaseProductState {
  final String message;

  const UpdateBaseProductEventSuccess(this.message);

  String get successMessage => message;
}

class UpdateBaseProductEventError extends BaseProductState {
  final String message;

  const UpdateBaseProductEventError(this.message);

  String get errorMessage => message;
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
    on<UpdateBaseProductEvent>(onUpdateBaseProductEvent);
  }

  void onServerChangedEvent(
      ServerChangedEvent event, Emitter<BaseProductState> emit) {
    ledPanelGrpcClient = event.ledPanelGrpcClient;
    coffeeMachineGrpcClient = event.coffeeMachineGrpcClient;
    add(GetBaseProductListEvent());
  }

  Future<Map<String, LedPanel>> getLedPanelItems() async {
    var responseLedPanel = await ledPanelGrpcClient.List();
    return {
      for (var e in responseLedPanel.results) e.name: LedPanel.fromResponse(e)
    };
  }

  Future<Map<String, CoffeeMachine>> getCoffeeMachineItems() async {
    var responseCoffeeMachine = await coffeeMachineGrpcClient.List();
    return {
      for (var e in responseCoffeeMachine.results)
        e.name: CoffeeMachine.fromResponse(e)
    };
  }

  void onGetBaseProductListEvent(
      GetBaseProductListEvent event, Emitter<BaseProductState> emit) async {
    try {
      emit(BaseProductListSuccess(
          await getLedPanelItems(), await getCoffeeMachineItems()));
    } catch (error) {
      emit(BaseProductListError(error.toString()));
    }
  }

  void onUpdateBaseProductEvent(
      UpdateBaseProductEvent event, Emitter<BaseProductState> emit) async {
    try {
      if (event.product is LedPanel) {
        await ledPanelGrpcClient.Update(event.product as LedPanel);
      } else {
        await coffeeMachineGrpcClient.Update(event.product as CoffeeMachine);
      }
    } catch (error) {
      emit(UpdateBaseProductEventError(error.toString()));
    }
  }
}
