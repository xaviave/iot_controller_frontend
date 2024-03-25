//
//  Generated code. Do not modify.
//  source: backend.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'backend.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $1;

export 'backend.pb.dart';

@$pb.GrpcServiceName('base_app.products_controller.BaseProductController')
class BaseProductControllerClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.BaseProductRequest, $0.BaseProductResponse>(
      '/base_app.products_controller.BaseProductController/Create',
      ($0.BaseProductRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseProductResponse.fromBuffer(value));
  static final _$destroy = $grpc.ClientMethod<$0.BaseProductDestroyRequest, $1.Empty>(
      '/base_app.products_controller.BaseProductController/Destroy',
      ($0.BaseProductDestroyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.BaseProductListRequest, $0.BaseProductListResponse>(
      '/base_app.products_controller.BaseProductController/List',
      ($0.BaseProductListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseProductListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<$0.BaseProductPartialUpdateRequest, $0.BaseProductResponse>(
      '/base_app.products_controller.BaseProductController/PartialUpdate',
      ($0.BaseProductPartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseProductResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<$0.BaseProductRetrieveRequest, $0.BaseProductResponse>(
      '/base_app.products_controller.BaseProductController/Retrieve',
      ($0.BaseProductRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseProductResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.BaseProductRequest, $0.BaseProductResponse>(
      '/base_app.products_controller.BaseProductController/Update',
      ($0.BaseProductRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseProductResponse.fromBuffer(value));

  BaseProductControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.BaseProductResponse> create($0.BaseProductRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.BaseProductDestroyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.BaseProductListResponse> list($0.BaseProductListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.BaseProductResponse> partialUpdate($0.BaseProductPartialUpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.BaseProductResponse> retrieve($0.BaseProductRetrieveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.BaseProductResponse> update($0.BaseProductRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.BaseProductController')
abstract class BaseProductControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'base_app.products_controller.BaseProductController';

  BaseProductControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.BaseProductRequest, $0.BaseProductResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BaseProductRequest.fromBuffer(value),
        ($0.BaseProductResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BaseProductDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BaseProductDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BaseProductListRequest, $0.BaseProductListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BaseProductListRequest.fromBuffer(value),
        ($0.BaseProductListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BaseProductPartialUpdateRequest, $0.BaseProductResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BaseProductPartialUpdateRequest.fromBuffer(value),
        ($0.BaseProductResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BaseProductRetrieveRequest, $0.BaseProductResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BaseProductRetrieveRequest.fromBuffer(value),
        ($0.BaseProductResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BaseProductRequest, $0.BaseProductResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BaseProductRequest.fromBuffer(value),
        ($0.BaseProductResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.BaseProductResponse> create_Pre($grpc.ServiceCall call, $async.Future<$0.BaseProductRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call, $async.Future<$0.BaseProductDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.BaseProductListResponse> list_Pre($grpc.ServiceCall call, $async.Future<$0.BaseProductListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.BaseProductResponse> partialUpdate_Pre($grpc.ServiceCall call, $async.Future<$0.BaseProductPartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.BaseProductResponse> retrieve_Pre($grpc.ServiceCall call, $async.Future<$0.BaseProductRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.BaseProductResponse> update_Pre($grpc.ServiceCall call, $async.Future<$0.BaseProductRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.BaseProductResponse> create($grpc.ServiceCall call, $0.BaseProductRequest request);
  $async.Future<$1.Empty> destroy($grpc.ServiceCall call, $0.BaseProductDestroyRequest request);
  $async.Future<$0.BaseProductListResponse> list($grpc.ServiceCall call, $0.BaseProductListRequest request);
  $async.Future<$0.BaseProductResponse> partialUpdate($grpc.ServiceCall call, $0.BaseProductPartialUpdateRequest request);
  $async.Future<$0.BaseProductResponse> retrieve($grpc.ServiceCall call, $0.BaseProductRetrieveRequest request);
  $async.Future<$0.BaseProductResponse> update($grpc.ServiceCall call, $0.BaseProductRequest request);
}
@$pb.GrpcServiceName('base_app.products_controller.CategoryController')
class CategoryControllerClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.CategoryRequest, $0.CategoryResponse>(
      '/base_app.products_controller.CategoryController/Create',
      ($0.CategoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CategoryResponse.fromBuffer(value));
  static final _$destroy = $grpc.ClientMethod<$0.CategoryDestroyRequest, $1.Empty>(
      '/base_app.products_controller.CategoryController/Destroy',
      ($0.CategoryDestroyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.CategoryListRequest, $0.CategoryListResponse>(
      '/base_app.products_controller.CategoryController/List',
      ($0.CategoryListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CategoryListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<$0.CategoryPartialUpdateRequest, $0.CategoryResponse>(
      '/base_app.products_controller.CategoryController/PartialUpdate',
      ($0.CategoryPartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CategoryResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<$0.CategoryRetrieveRequest, $0.CategoryResponse>(
      '/base_app.products_controller.CategoryController/Retrieve',
      ($0.CategoryRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CategoryResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.CategoryRequest, $0.CategoryResponse>(
      '/base_app.products_controller.CategoryController/Update',
      ($0.CategoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CategoryResponse.fromBuffer(value));

  CategoryControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CategoryResponse> create($0.CategoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.CategoryDestroyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.CategoryListResponse> list($0.CategoryListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.CategoryResponse> partialUpdate($0.CategoryPartialUpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.CategoryResponse> retrieve($0.CategoryRetrieveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.CategoryResponse> update($0.CategoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.CategoryController')
abstract class CategoryControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'base_app.products_controller.CategoryController';

  CategoryControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CategoryRequest, $0.CategoryResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CategoryRequest.fromBuffer(value),
        ($0.CategoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CategoryDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CategoryDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CategoryListRequest, $0.CategoryListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CategoryListRequest.fromBuffer(value),
        ($0.CategoryListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CategoryPartialUpdateRequest, $0.CategoryResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CategoryPartialUpdateRequest.fromBuffer(value),
        ($0.CategoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CategoryRetrieveRequest, $0.CategoryResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CategoryRetrieveRequest.fromBuffer(value),
        ($0.CategoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CategoryRequest, $0.CategoryResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CategoryRequest.fromBuffer(value),
        ($0.CategoryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CategoryResponse> create_Pre($grpc.ServiceCall call, $async.Future<$0.CategoryRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call, $async.Future<$0.CategoryDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.CategoryListResponse> list_Pre($grpc.ServiceCall call, $async.Future<$0.CategoryListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.CategoryResponse> partialUpdate_Pre($grpc.ServiceCall call, $async.Future<$0.CategoryPartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.CategoryResponse> retrieve_Pre($grpc.ServiceCall call, $async.Future<$0.CategoryRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.CategoryResponse> update_Pre($grpc.ServiceCall call, $async.Future<$0.CategoryRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.CategoryResponse> create($grpc.ServiceCall call, $0.CategoryRequest request);
  $async.Future<$1.Empty> destroy($grpc.ServiceCall call, $0.CategoryDestroyRequest request);
  $async.Future<$0.CategoryListResponse> list($grpc.ServiceCall call, $0.CategoryListRequest request);
  $async.Future<$0.CategoryResponse> partialUpdate($grpc.ServiceCall call, $0.CategoryPartialUpdateRequest request);
  $async.Future<$0.CategoryResponse> retrieve($grpc.ServiceCall call, $0.CategoryRetrieveRequest request);
  $async.Future<$0.CategoryResponse> update($grpc.ServiceCall call, $0.CategoryRequest request);
}
@$pb.GrpcServiceName('base_app.products_controller.CoffeeMachineController')
class CoffeeMachineControllerClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.CoffeeMachineRequest, $0.CoffeeMachineResponse>(
      '/base_app.products_controller.CoffeeMachineController/Create',
      ($0.CoffeeMachineRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CoffeeMachineResponse.fromBuffer(value));
  static final _$destroy = $grpc.ClientMethod<$0.CoffeeMachineDestroyRequest, $1.Empty>(
      '/base_app.products_controller.CoffeeMachineController/Destroy',
      ($0.CoffeeMachineDestroyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.CoffeeMachineListRequest, $0.CoffeeMachineListResponse>(
      '/base_app.products_controller.CoffeeMachineController/List',
      ($0.CoffeeMachineListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CoffeeMachineListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<$0.CoffeeMachinePartialUpdateRequest, $0.CoffeeMachineResponse>(
      '/base_app.products_controller.CoffeeMachineController/PartialUpdate',
      ($0.CoffeeMachinePartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CoffeeMachineResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<$0.CoffeeMachineRetrieveRequest, $0.CoffeeMachineResponse>(
      '/base_app.products_controller.CoffeeMachineController/Retrieve',
      ($0.CoffeeMachineRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CoffeeMachineResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.CoffeeMachineRequest, $0.CoffeeMachineResponse>(
      '/base_app.products_controller.CoffeeMachineController/Update',
      ($0.CoffeeMachineRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CoffeeMachineResponse.fromBuffer(value));

  CoffeeMachineControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CoffeeMachineResponse> create($0.CoffeeMachineRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.CoffeeMachineDestroyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.CoffeeMachineListResponse> list($0.CoffeeMachineListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.CoffeeMachineResponse> partialUpdate($0.CoffeeMachinePartialUpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.CoffeeMachineResponse> retrieve($0.CoffeeMachineRetrieveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.CoffeeMachineResponse> update($0.CoffeeMachineRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.CoffeeMachineController')
abstract class CoffeeMachineControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'base_app.products_controller.CoffeeMachineController';

  CoffeeMachineControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CoffeeMachineRequest, $0.CoffeeMachineResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CoffeeMachineRequest.fromBuffer(value),
        ($0.CoffeeMachineResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CoffeeMachineDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CoffeeMachineDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CoffeeMachineListRequest, $0.CoffeeMachineListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CoffeeMachineListRequest.fromBuffer(value),
        ($0.CoffeeMachineListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CoffeeMachinePartialUpdateRequest, $0.CoffeeMachineResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CoffeeMachinePartialUpdateRequest.fromBuffer(value),
        ($0.CoffeeMachineResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CoffeeMachineRetrieveRequest, $0.CoffeeMachineResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CoffeeMachineRetrieveRequest.fromBuffer(value),
        ($0.CoffeeMachineResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CoffeeMachineRequest, $0.CoffeeMachineResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CoffeeMachineRequest.fromBuffer(value),
        ($0.CoffeeMachineResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CoffeeMachineResponse> create_Pre($grpc.ServiceCall call, $async.Future<$0.CoffeeMachineRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call, $async.Future<$0.CoffeeMachineDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.CoffeeMachineListResponse> list_Pre($grpc.ServiceCall call, $async.Future<$0.CoffeeMachineListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.CoffeeMachineResponse> partialUpdate_Pre($grpc.ServiceCall call, $async.Future<$0.CoffeeMachinePartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.CoffeeMachineResponse> retrieve_Pre($grpc.ServiceCall call, $async.Future<$0.CoffeeMachineRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.CoffeeMachineResponse> update_Pre($grpc.ServiceCall call, $async.Future<$0.CoffeeMachineRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.CoffeeMachineResponse> create($grpc.ServiceCall call, $0.CoffeeMachineRequest request);
  $async.Future<$1.Empty> destroy($grpc.ServiceCall call, $0.CoffeeMachineDestroyRequest request);
  $async.Future<$0.CoffeeMachineListResponse> list($grpc.ServiceCall call, $0.CoffeeMachineListRequest request);
  $async.Future<$0.CoffeeMachineResponse> partialUpdate($grpc.ServiceCall call, $0.CoffeeMachinePartialUpdateRequest request);
  $async.Future<$0.CoffeeMachineResponse> retrieve($grpc.ServiceCall call, $0.CoffeeMachineRetrieveRequest request);
  $async.Future<$0.CoffeeMachineResponse> update($grpc.ServiceCall call, $0.CoffeeMachineRequest request);
}
@$pb.GrpcServiceName('base_app.products_controller.LedModeController')
class LedModeControllerClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.LedModeRequest, $0.LedModeResponse>(
      '/base_app.products_controller.LedModeController/Create',
      ($0.LedModeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LedModeResponse.fromBuffer(value));
  static final _$destroy = $grpc.ClientMethod<$0.LedModeDestroyRequest, $1.Empty>(
      '/base_app.products_controller.LedModeController/Destroy',
      ($0.LedModeDestroyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.LedModeListRequest, $0.LedModeListResponse>(
      '/base_app.products_controller.LedModeController/List',
      ($0.LedModeListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LedModeListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<$0.LedModePartialUpdateRequest, $0.LedModeResponse>(
      '/base_app.products_controller.LedModeController/PartialUpdate',
      ($0.LedModePartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LedModeResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<$0.LedModeRetrieveRequest, $0.LedModeResponse>(
      '/base_app.products_controller.LedModeController/Retrieve',
      ($0.LedModeRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LedModeResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.LedModeRequest, $0.LedModeResponse>(
      '/base_app.products_controller.LedModeController/Update',
      ($0.LedModeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LedModeResponse.fromBuffer(value));

  LedModeControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.LedModeResponse> create($0.LedModeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.LedModeDestroyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedModeListResponse> list($0.LedModeListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedModeResponse> partialUpdate($0.LedModePartialUpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedModeResponse> retrieve($0.LedModeRetrieveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedModeResponse> update($0.LedModeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.LedModeController')
abstract class LedModeControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'base_app.products_controller.LedModeController';

  LedModeControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LedModeRequest, $0.LedModeResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedModeRequest.fromBuffer(value),
        ($0.LedModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedModeDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedModeDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedModeListRequest, $0.LedModeListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedModeListRequest.fromBuffer(value),
        ($0.LedModeListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedModePartialUpdateRequest, $0.LedModeResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedModePartialUpdateRequest.fromBuffer(value),
        ($0.LedModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedModeRetrieveRequest, $0.LedModeResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedModeRetrieveRequest.fromBuffer(value),
        ($0.LedModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedModeRequest, $0.LedModeResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedModeRequest.fromBuffer(value),
        ($0.LedModeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LedModeResponse> create_Pre($grpc.ServiceCall call, $async.Future<$0.LedModeRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call, $async.Future<$0.LedModeDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.LedModeListResponse> list_Pre($grpc.ServiceCall call, $async.Future<$0.LedModeListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.LedModeResponse> partialUpdate_Pre($grpc.ServiceCall call, $async.Future<$0.LedModePartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.LedModeResponse> retrieve_Pre($grpc.ServiceCall call, $async.Future<$0.LedModeRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.LedModeResponse> update_Pre($grpc.ServiceCall call, $async.Future<$0.LedModeRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.LedModeResponse> create($grpc.ServiceCall call, $0.LedModeRequest request);
  $async.Future<$1.Empty> destroy($grpc.ServiceCall call, $0.LedModeDestroyRequest request);
  $async.Future<$0.LedModeListResponse> list($grpc.ServiceCall call, $0.LedModeListRequest request);
  $async.Future<$0.LedModeResponse> partialUpdate($grpc.ServiceCall call, $0.LedModePartialUpdateRequest request);
  $async.Future<$0.LedModeResponse> retrieve($grpc.ServiceCall call, $0.LedModeRetrieveRequest request);
  $async.Future<$0.LedModeResponse> update($grpc.ServiceCall call, $0.LedModeRequest request);
}
@$pb.GrpcServiceName('base_app.products_controller.LedPanelController')
class LedPanelControllerClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.LedPanelRequest, $0.LedPanelResponse>(
      '/base_app.products_controller.LedPanelController/Create',
      ($0.LedPanelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LedPanelResponse.fromBuffer(value));
  static final _$destroy = $grpc.ClientMethod<$0.LedPanelDestroyRequest, $1.Empty>(
      '/base_app.products_controller.LedPanelController/Destroy',
      ($0.LedPanelDestroyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.LedPanelListRequest, $0.LedPanelListResponse>(
      '/base_app.products_controller.LedPanelController/List',
      ($0.LedPanelListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LedPanelListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<$0.LedPanelPartialUpdateRequest, $0.LedPanelResponse>(
      '/base_app.products_controller.LedPanelController/PartialUpdate',
      ($0.LedPanelPartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LedPanelResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<$0.LedPanelRetrieveRequest, $0.LedPanelResponse>(
      '/base_app.products_controller.LedPanelController/Retrieve',
      ($0.LedPanelRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LedPanelResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.LedPanelRequest, $0.LedPanelResponse>(
      '/base_app.products_controller.LedPanelController/Update',
      ($0.LedPanelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LedPanelResponse.fromBuffer(value));

  LedPanelControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.LedPanelResponse> create($0.LedPanelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.LedPanelDestroyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedPanelListResponse> list($0.LedPanelListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedPanelResponse> partialUpdate($0.LedPanelPartialUpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedPanelResponse> retrieve($0.LedPanelRetrieveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedPanelResponse> update($0.LedPanelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.LedPanelController')
abstract class LedPanelControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'base_app.products_controller.LedPanelController';

  LedPanelControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LedPanelRequest, $0.LedPanelResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedPanelRequest.fromBuffer(value),
        ($0.LedPanelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedPanelDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedPanelDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedPanelListRequest, $0.LedPanelListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedPanelListRequest.fromBuffer(value),
        ($0.LedPanelListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedPanelPartialUpdateRequest, $0.LedPanelResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedPanelPartialUpdateRequest.fromBuffer(value),
        ($0.LedPanelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedPanelRetrieveRequest, $0.LedPanelResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedPanelRetrieveRequest.fromBuffer(value),
        ($0.LedPanelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedPanelRequest, $0.LedPanelResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedPanelRequest.fromBuffer(value),
        ($0.LedPanelResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LedPanelResponse> create_Pre($grpc.ServiceCall call, $async.Future<$0.LedPanelRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call, $async.Future<$0.LedPanelDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.LedPanelListResponse> list_Pre($grpc.ServiceCall call, $async.Future<$0.LedPanelListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.LedPanelResponse> partialUpdate_Pre($grpc.ServiceCall call, $async.Future<$0.LedPanelPartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.LedPanelResponse> retrieve_Pre($grpc.ServiceCall call, $async.Future<$0.LedPanelRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.LedPanelResponse> update_Pre($grpc.ServiceCall call, $async.Future<$0.LedPanelRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.LedPanelResponse> create($grpc.ServiceCall call, $0.LedPanelRequest request);
  $async.Future<$1.Empty> destroy($grpc.ServiceCall call, $0.LedPanelDestroyRequest request);
  $async.Future<$0.LedPanelListResponse> list($grpc.ServiceCall call, $0.LedPanelListRequest request);
  $async.Future<$0.LedPanelResponse> partialUpdate($grpc.ServiceCall call, $0.LedPanelPartialUpdateRequest request);
  $async.Future<$0.LedPanelResponse> retrieve($grpc.ServiceCall call, $0.LedPanelRetrieveRequest request);
  $async.Future<$0.LedPanelResponse> update($grpc.ServiceCall call, $0.LedPanelRequest request);
}
@$pb.GrpcServiceName('base_app.products_controller.ProjectController')
class ProjectControllerClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.ProjectRequest, $0.ProjectResponse>(
      '/base_app.products_controller.ProjectController/Create',
      ($0.ProjectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProjectResponse.fromBuffer(value));
  static final _$destroy = $grpc.ClientMethod<$0.ProjectDestroyRequest, $1.Empty>(
      '/base_app.products_controller.ProjectController/Destroy',
      ($0.ProjectDestroyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.ProjectListRequest, $0.ProjectListResponse>(
      '/base_app.products_controller.ProjectController/List',
      ($0.ProjectListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProjectListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<$0.ProjectPartialUpdateRequest, $0.ProjectResponse>(
      '/base_app.products_controller.ProjectController/PartialUpdate',
      ($0.ProjectPartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProjectResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<$0.ProjectRetrieveRequest, $0.ProjectResponse>(
      '/base_app.products_controller.ProjectController/Retrieve',
      ($0.ProjectRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProjectResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.ProjectRequest, $0.ProjectResponse>(
      '/base_app.products_controller.ProjectController/Update',
      ($0.ProjectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProjectResponse.fromBuffer(value));

  ProjectControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ProjectResponse> create($0.ProjectRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.ProjectDestroyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProjectListResponse> list($0.ProjectListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProjectResponse> partialUpdate($0.ProjectPartialUpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProjectResponse> retrieve($0.ProjectRetrieveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProjectResponse> update($0.ProjectRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.ProjectController')
abstract class ProjectControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'base_app.products_controller.ProjectController';

  ProjectControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ProjectRequest, $0.ProjectResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProjectRequest.fromBuffer(value),
        ($0.ProjectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProjectDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProjectDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProjectListRequest, $0.ProjectListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProjectListRequest.fromBuffer(value),
        ($0.ProjectListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProjectPartialUpdateRequest, $0.ProjectResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProjectPartialUpdateRequest.fromBuffer(value),
        ($0.ProjectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProjectRetrieveRequest, $0.ProjectResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProjectRetrieveRequest.fromBuffer(value),
        ($0.ProjectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProjectRequest, $0.ProjectResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProjectRequest.fromBuffer(value),
        ($0.ProjectResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ProjectResponse> create_Pre($grpc.ServiceCall call, $async.Future<$0.ProjectRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call, $async.Future<$0.ProjectDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.ProjectListResponse> list_Pre($grpc.ServiceCall call, $async.Future<$0.ProjectListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.ProjectResponse> partialUpdate_Pre($grpc.ServiceCall call, $async.Future<$0.ProjectPartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.ProjectResponse> retrieve_Pre($grpc.ServiceCall call, $async.Future<$0.ProjectRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.ProjectResponse> update_Pre($grpc.ServiceCall call, $async.Future<$0.ProjectRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.ProjectResponse> create($grpc.ServiceCall call, $0.ProjectRequest request);
  $async.Future<$1.Empty> destroy($grpc.ServiceCall call, $0.ProjectDestroyRequest request);
  $async.Future<$0.ProjectListResponse> list($grpc.ServiceCall call, $0.ProjectListRequest request);
  $async.Future<$0.ProjectResponse> partialUpdate($grpc.ServiceCall call, $0.ProjectPartialUpdateRequest request);
  $async.Future<$0.ProjectResponse> retrieve($grpc.ServiceCall call, $0.ProjectRetrieveRequest request);
  $async.Future<$0.ProjectResponse> update($grpc.ServiceCall call, $0.ProjectRequest request);
}
