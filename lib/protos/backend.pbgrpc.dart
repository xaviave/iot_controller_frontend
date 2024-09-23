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

@$pb.GrpcServiceName('base_app.products_controller.CategoryController')
class CategoryControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.CategoryRequest, $0.CategoryResponse>(
          '/base_app.products_controller.CategoryController/Create',
          ($0.CategoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CategoryResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.CategoryDestroyRequest, $1.Empty>(
          '/base_app.products_controller.CategoryController/Destroy',
          ($0.CategoryDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.CategoryListRequest, $0.CategoryListResponse>(
          '/base_app.products_controller.CategoryController/List',
          ($0.CategoryListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CategoryListResponse.fromBuffer(value));
  static final _$partialUpdate =
      $grpc.ClientMethod<$0.CategoryPartialUpdateRequest, $0.CategoryResponse>(
          '/base_app.products_controller.CategoryController/PartialUpdate',
          ($0.CategoryPartialUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CategoryResponse.fromBuffer(value));
  static final _$retrieve =
      $grpc.ClientMethod<$0.CategoryRetrieveRequest, $0.CategoryResponse>(
          '/base_app.products_controller.CategoryController/Retrieve',
          ($0.CategoryRetrieveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CategoryResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.CategoryRequest, $0.CategoryResponse>(
          '/base_app.products_controller.CategoryController/Update',
          ($0.CategoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CategoryResponse.fromBuffer(value));

  CategoryControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CategoryResponse> create($0.CategoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.CategoryDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.CategoryListResponse> list(
      $0.CategoryListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.CategoryResponse> partialUpdate(
      $0.CategoryPartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.CategoryResponse> retrieve(
      $0.CategoryRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.CategoryResponse> update($0.CategoryRequest request,
      {$grpc.CallOptions? options}) {
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
        ($core.List<$core.int> value) =>
            $0.CategoryDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CategoryListRequest, $0.CategoryListResponse>(
            'List',
            list_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CategoryListRequest.fromBuffer(value),
            ($0.CategoryListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CategoryPartialUpdateRequest,
            $0.CategoryResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CategoryPartialUpdateRequest.fromBuffer(value),
        ($0.CategoryResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CategoryRetrieveRequest, $0.CategoryResponse>(
            'Retrieve',
            retrieve_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CategoryRetrieveRequest.fromBuffer(value),
            ($0.CategoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CategoryRequest, $0.CategoryResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CategoryRequest.fromBuffer(value),
        ($0.CategoryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CategoryResponse> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CategoryRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.CategoryDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.CategoryListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.CategoryListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.CategoryResponse> partialUpdate_Pre($grpc.ServiceCall call,
      $async.Future<$0.CategoryPartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.CategoryResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.CategoryRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.CategoryResponse> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CategoryRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.CategoryResponse> create(
      $grpc.ServiceCall call, $0.CategoryRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.CategoryDestroyRequest request);
  $async.Future<$0.CategoryListResponse> list(
      $grpc.ServiceCall call, $0.CategoryListRequest request);
  $async.Future<$0.CategoryResponse> partialUpdate(
      $grpc.ServiceCall call, $0.CategoryPartialUpdateRequest request);
  $async.Future<$0.CategoryResponse> retrieve(
      $grpc.ServiceCall call, $0.CategoryRetrieveRequest request);
  $async.Future<$0.CategoryResponse> update(
      $grpc.ServiceCall call, $0.CategoryRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.ClockedScheduleController')
class ClockedScheduleControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.ClockedScheduleRequest, $0.ClockedScheduleResponse>(
          '/base_app.products_controller.ClockedScheduleController/Create',
          ($0.ClockedScheduleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ClockedScheduleResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.ClockedScheduleDestroyRequest, $1.Empty>(
          '/base_app.products_controller.ClockedScheduleController/Destroy',
          ($0.ClockedScheduleDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.ClockedScheduleListRequest,
          $0.ClockedScheduleListResponse>(
      '/base_app.products_controller.ClockedScheduleController/List',
      ($0.ClockedScheduleListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ClockedScheduleListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<
          $0.ClockedSchedulePartialUpdateRequest, $0.ClockedScheduleResponse>(
      '/base_app.products_controller.ClockedScheduleController/PartialUpdate',
      ($0.ClockedSchedulePartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ClockedScheduleResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<
          $0.ClockedScheduleRetrieveRequest, $0.ClockedScheduleResponse>(
      '/base_app.products_controller.ClockedScheduleController/Retrieve',
      ($0.ClockedScheduleRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ClockedScheduleResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.ClockedScheduleRequest, $0.ClockedScheduleResponse>(
          '/base_app.products_controller.ClockedScheduleController/Update',
          ($0.ClockedScheduleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ClockedScheduleResponse.fromBuffer(value));

  ClockedScheduleControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ClockedScheduleResponse> create(
      $0.ClockedScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy(
      $0.ClockedScheduleDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.ClockedScheduleListResponse> list(
      $0.ClockedScheduleListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.ClockedScheduleResponse> partialUpdate(
      $0.ClockedSchedulePartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.ClockedScheduleResponse> retrieve(
      $0.ClockedScheduleRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.ClockedScheduleResponse> update(
      $0.ClockedScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.ClockedScheduleController')
abstract class ClockedScheduleControllerServiceBase extends $grpc.Service {
  $core.String get $name =>
      'base_app.products_controller.ClockedScheduleController';

  ClockedScheduleControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ClockedScheduleRequest,
            $0.ClockedScheduleResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ClockedScheduleRequest.fromBuffer(value),
        ($0.ClockedScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClockedScheduleDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ClockedScheduleDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClockedScheduleListRequest,
            $0.ClockedScheduleListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ClockedScheduleListRequest.fromBuffer(value),
        ($0.ClockedScheduleListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClockedSchedulePartialUpdateRequest,
            $0.ClockedScheduleResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ClockedSchedulePartialUpdateRequest.fromBuffer(value),
        ($0.ClockedScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClockedScheduleRetrieveRequest,
            $0.ClockedScheduleResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ClockedScheduleRetrieveRequest.fromBuffer(value),
        ($0.ClockedScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClockedScheduleRequest,
            $0.ClockedScheduleResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ClockedScheduleRequest.fromBuffer(value),
        ($0.ClockedScheduleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ClockedScheduleResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.ClockedScheduleRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.ClockedScheduleDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.ClockedScheduleListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.ClockedScheduleListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.ClockedScheduleResponse> partialUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ClockedSchedulePartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.ClockedScheduleResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.ClockedScheduleRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.ClockedScheduleResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.ClockedScheduleRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.ClockedScheduleResponse> create(
      $grpc.ServiceCall call, $0.ClockedScheduleRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.ClockedScheduleDestroyRequest request);
  $async.Future<$0.ClockedScheduleListResponse> list(
      $grpc.ServiceCall call, $0.ClockedScheduleListRequest request);
  $async.Future<$0.ClockedScheduleResponse> partialUpdate(
      $grpc.ServiceCall call, $0.ClockedSchedulePartialUpdateRequest request);
  $async.Future<$0.ClockedScheduleResponse> retrieve(
      $grpc.ServiceCall call, $0.ClockedScheduleRetrieveRequest request);
  $async.Future<$0.ClockedScheduleResponse> update(
      $grpc.ServiceCall call, $0.ClockedScheduleRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.CoffeeMachineController')
class CoffeeMachineControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.CoffeeMachineRequest, $0.CoffeeMachineResponse>(
          '/base_app.products_controller.CoffeeMachineController/Create',
          ($0.CoffeeMachineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CoffeeMachineResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.CoffeeMachineDestroyRequest, $1.Empty>(
          '/base_app.products_controller.CoffeeMachineController/Destroy',
          ($0.CoffeeMachineDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.CoffeeMachineListRequest,
          $0.CoffeeMachineListResponse>(
      '/base_app.products_controller.CoffeeMachineController/List',
      ($0.CoffeeMachineListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CoffeeMachineListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<
          $0.CoffeeMachinePartialUpdateRequest, $0.CoffeeMachineResponse>(
      '/base_app.products_controller.CoffeeMachineController/PartialUpdate',
      ($0.CoffeeMachinePartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CoffeeMachineResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<$0.CoffeeMachineRetrieveRequest,
          $0.CoffeeMachineResponse>(
      '/base_app.products_controller.CoffeeMachineController/Retrieve',
      ($0.CoffeeMachineRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CoffeeMachineResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.CoffeeMachineRequest, $0.CoffeeMachineResponse>(
          '/base_app.products_controller.CoffeeMachineController/Update',
          ($0.CoffeeMachineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CoffeeMachineResponse.fromBuffer(value));

  CoffeeMachineControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CoffeeMachineResponse> create(
      $0.CoffeeMachineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.CoffeeMachineDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.CoffeeMachineListResponse> list(
      $0.CoffeeMachineListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.CoffeeMachineResponse> partialUpdate(
      $0.CoffeeMachinePartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.CoffeeMachineResponse> retrieve(
      $0.CoffeeMachineRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.CoffeeMachineResponse> update(
      $0.CoffeeMachineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.CoffeeMachineController')
abstract class CoffeeMachineControllerServiceBase extends $grpc.Service {
  $core.String get $name =>
      'base_app.products_controller.CoffeeMachineController';

  CoffeeMachineControllerServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.CoffeeMachineRequest, $0.CoffeeMachineResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CoffeeMachineRequest.fromBuffer(value),
            ($0.CoffeeMachineResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CoffeeMachineDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CoffeeMachineDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CoffeeMachineListRequest,
            $0.CoffeeMachineListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CoffeeMachineListRequest.fromBuffer(value),
        ($0.CoffeeMachineListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CoffeeMachinePartialUpdateRequest,
            $0.CoffeeMachineResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CoffeeMachinePartialUpdateRequest.fromBuffer(value),
        ($0.CoffeeMachineResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CoffeeMachineRetrieveRequest,
            $0.CoffeeMachineResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CoffeeMachineRetrieveRequest.fromBuffer(value),
        ($0.CoffeeMachineResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CoffeeMachineRequest, $0.CoffeeMachineResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CoffeeMachineRequest.fromBuffer(value),
            ($0.CoffeeMachineResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CoffeeMachineResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.CoffeeMachineRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.CoffeeMachineDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.CoffeeMachineListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.CoffeeMachineListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.CoffeeMachineResponse> partialUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CoffeeMachinePartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.CoffeeMachineResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.CoffeeMachineRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.CoffeeMachineResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.CoffeeMachineRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.CoffeeMachineResponse> create(
      $grpc.ServiceCall call, $0.CoffeeMachineRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.CoffeeMachineDestroyRequest request);
  $async.Future<$0.CoffeeMachineListResponse> list(
      $grpc.ServiceCall call, $0.CoffeeMachineListRequest request);
  $async.Future<$0.CoffeeMachineResponse> partialUpdate(
      $grpc.ServiceCall call, $0.CoffeeMachinePartialUpdateRequest request);
  $async.Future<$0.CoffeeMachineResponse> retrieve(
      $grpc.ServiceCall call, $0.CoffeeMachineRetrieveRequest request);
  $async.Future<$0.CoffeeMachineResponse> update(
      $grpc.ServiceCall call, $0.CoffeeMachineRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.ColorModeController')
class ColorModeControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.ColorModeRequest, $0.ColorModeResponse>(
          '/base_app.products_controller.ColorModeController/Create',
          ($0.ColorModeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ColorModeResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.ColorModeDestroyRequest, $1.Empty>(
          '/base_app.products_controller.ColorModeController/Destroy',
          ($0.ColorModeDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.ColorModeListRequest, $0.ColorModeListResponse>(
          '/base_app.products_controller.ColorModeController/List',
          ($0.ColorModeListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ColorModeListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<
          $0.ColorModePartialUpdateRequest, $0.ColorModeResponse>(
      '/base_app.products_controller.ColorModeController/PartialUpdate',
      ($0.ColorModePartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ColorModeResponse.fromBuffer(value));
  static final _$retrieve =
      $grpc.ClientMethod<$0.ColorModeRetrieveRequest, $0.ColorModeResponse>(
          '/base_app.products_controller.ColorModeController/Retrieve',
          ($0.ColorModeRetrieveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ColorModeResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.ColorModeRequest, $0.ColorModeResponse>(
          '/base_app.products_controller.ColorModeController/Update',
          ($0.ColorModeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ColorModeResponse.fromBuffer(value));

  ColorModeControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ColorModeResponse> create($0.ColorModeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.ColorModeDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.ColorModeListResponse> list(
      $0.ColorModeListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.ColorModeResponse> partialUpdate(
      $0.ColorModePartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.ColorModeResponse> retrieve(
      $0.ColorModeRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.ColorModeResponse> update($0.ColorModeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.ColorModeController')
abstract class ColorModeControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'base_app.products_controller.ColorModeController';

  ColorModeControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ColorModeRequest, $0.ColorModeResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ColorModeRequest.fromBuffer(value),
        ($0.ColorModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ColorModeDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ColorModeDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ColorModeListRequest, $0.ColorModeListResponse>(
            'List',
            list_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ColorModeListRequest.fromBuffer(value),
            ($0.ColorModeListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ColorModePartialUpdateRequest,
            $0.ColorModeResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ColorModePartialUpdateRequest.fromBuffer(value),
        ($0.ColorModeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ColorModeRetrieveRequest, $0.ColorModeResponse>(
            'Retrieve',
            retrieve_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ColorModeRetrieveRequest.fromBuffer(value),
            ($0.ColorModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ColorModeRequest, $0.ColorModeResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ColorModeRequest.fromBuffer(value),
        ($0.ColorModeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ColorModeResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.ColorModeRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.ColorModeDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.ColorModeListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.ColorModeListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.ColorModeResponse> partialUpdate_Pre($grpc.ServiceCall call,
      $async.Future<$0.ColorModePartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.ColorModeResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.ColorModeRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.ColorModeResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.ColorModeRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.ColorModeResponse> create(
      $grpc.ServiceCall call, $0.ColorModeRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.ColorModeDestroyRequest request);
  $async.Future<$0.ColorModeListResponse> list(
      $grpc.ServiceCall call, $0.ColorModeListRequest request);
  $async.Future<$0.ColorModeResponse> partialUpdate(
      $grpc.ServiceCall call, $0.ColorModePartialUpdateRequest request);
  $async.Future<$0.ColorModeResponse> retrieve(
      $grpc.ServiceCall call, $0.ColorModeRetrieveRequest request);
  $async.Future<$0.ColorModeResponse> update(
      $grpc.ServiceCall call, $0.ColorModeRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.CrontabScheduleController')
class CrontabScheduleControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.CrontabScheduleRequest, $0.CrontabScheduleResponse>(
          '/base_app.products_controller.CrontabScheduleController/Create',
          ($0.CrontabScheduleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CrontabScheduleResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.CrontabScheduleDestroyRequest, $1.Empty>(
          '/base_app.products_controller.CrontabScheduleController/Destroy',
          ($0.CrontabScheduleDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.CrontabScheduleListRequest,
          $0.CrontabScheduleListResponse>(
      '/base_app.products_controller.CrontabScheduleController/List',
      ($0.CrontabScheduleListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CrontabScheduleListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<
          $0.CrontabSchedulePartialUpdateRequest, $0.CrontabScheduleResponse>(
      '/base_app.products_controller.CrontabScheduleController/PartialUpdate',
      ($0.CrontabSchedulePartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CrontabScheduleResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<
          $0.CrontabScheduleRetrieveRequest, $0.CrontabScheduleResponse>(
      '/base_app.products_controller.CrontabScheduleController/Retrieve',
      ($0.CrontabScheduleRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CrontabScheduleResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.CrontabScheduleRequest, $0.CrontabScheduleResponse>(
          '/base_app.products_controller.CrontabScheduleController/Update',
          ($0.CrontabScheduleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CrontabScheduleResponse.fromBuffer(value));

  CrontabScheduleControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CrontabScheduleResponse> create(
      $0.CrontabScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy(
      $0.CrontabScheduleDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.CrontabScheduleListResponse> list(
      $0.CrontabScheduleListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.CrontabScheduleResponse> partialUpdate(
      $0.CrontabSchedulePartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.CrontabScheduleResponse> retrieve(
      $0.CrontabScheduleRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.CrontabScheduleResponse> update(
      $0.CrontabScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.CrontabScheduleController')
abstract class CrontabScheduleControllerServiceBase extends $grpc.Service {
  $core.String get $name =>
      'base_app.products_controller.CrontabScheduleController';

  CrontabScheduleControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CrontabScheduleRequest,
            $0.CrontabScheduleResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CrontabScheduleRequest.fromBuffer(value),
        ($0.CrontabScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CrontabScheduleDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CrontabScheduleDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CrontabScheduleListRequest,
            $0.CrontabScheduleListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CrontabScheduleListRequest.fromBuffer(value),
        ($0.CrontabScheduleListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CrontabSchedulePartialUpdateRequest,
            $0.CrontabScheduleResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CrontabSchedulePartialUpdateRequest.fromBuffer(value),
        ($0.CrontabScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CrontabScheduleRetrieveRequest,
            $0.CrontabScheduleResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CrontabScheduleRetrieveRequest.fromBuffer(value),
        ($0.CrontabScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CrontabScheduleRequest,
            $0.CrontabScheduleResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CrontabScheduleRequest.fromBuffer(value),
        ($0.CrontabScheduleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CrontabScheduleResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.CrontabScheduleRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.CrontabScheduleDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.CrontabScheduleListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.CrontabScheduleListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.CrontabScheduleResponse> partialUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CrontabSchedulePartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.CrontabScheduleResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.CrontabScheduleRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.CrontabScheduleResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.CrontabScheduleRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.CrontabScheduleResponse> create(
      $grpc.ServiceCall call, $0.CrontabScheduleRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.CrontabScheduleDestroyRequest request);
  $async.Future<$0.CrontabScheduleListResponse> list(
      $grpc.ServiceCall call, $0.CrontabScheduleListRequest request);
  $async.Future<$0.CrontabScheduleResponse> partialUpdate(
      $grpc.ServiceCall call, $0.CrontabSchedulePartialUpdateRequest request);
  $async.Future<$0.CrontabScheduleResponse> retrieve(
      $grpc.ServiceCall call, $0.CrontabScheduleRetrieveRequest request);
  $async.Future<$0.CrontabScheduleResponse> update(
      $grpc.ServiceCall call, $0.CrontabScheduleRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.ImageModeController')
class ImageModeControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.ImageModeRequest, $0.ImageModeResponse>(
          '/base_app.products_controller.ImageModeController/Create',
          ($0.ImageModeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ImageModeResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.ImageModeDestroyRequest, $1.Empty>(
          '/base_app.products_controller.ImageModeController/Destroy',
          ($0.ImageModeDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.ImageModeListRequest, $0.ImageModeListResponse>(
          '/base_app.products_controller.ImageModeController/List',
          ($0.ImageModeListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ImageModeListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<
          $0.ImageModePartialUpdateRequest, $0.ImageModeResponse>(
      '/base_app.products_controller.ImageModeController/PartialUpdate',
      ($0.ImageModePartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ImageModeResponse.fromBuffer(value));
  static final _$retrieve =
      $grpc.ClientMethod<$0.ImageModeRetrieveRequest, $0.ImageModeResponse>(
          '/base_app.products_controller.ImageModeController/Retrieve',
          ($0.ImageModeRetrieveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ImageModeResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.ImageModeRequest, $0.ImageModeResponse>(
          '/base_app.products_controller.ImageModeController/Update',
          ($0.ImageModeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ImageModeResponse.fromBuffer(value));

  ImageModeControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ImageModeResponse> create($0.ImageModeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.ImageModeDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.ImageModeListResponse> list(
      $0.ImageModeListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.ImageModeResponse> partialUpdate(
      $0.ImageModePartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.ImageModeResponse> retrieve(
      $0.ImageModeRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.ImageModeResponse> update($0.ImageModeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.ImageModeController')
abstract class ImageModeControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'base_app.products_controller.ImageModeController';

  ImageModeControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ImageModeRequest, $0.ImageModeResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ImageModeRequest.fromBuffer(value),
        ($0.ImageModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ImageModeDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ImageModeDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ImageModeListRequest, $0.ImageModeListResponse>(
            'List',
            list_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ImageModeListRequest.fromBuffer(value),
            ($0.ImageModeListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ImageModePartialUpdateRequest,
            $0.ImageModeResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ImageModePartialUpdateRequest.fromBuffer(value),
        ($0.ImageModeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ImageModeRetrieveRequest, $0.ImageModeResponse>(
            'Retrieve',
            retrieve_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ImageModeRetrieveRequest.fromBuffer(value),
            ($0.ImageModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ImageModeRequest, $0.ImageModeResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ImageModeRequest.fromBuffer(value),
        ($0.ImageModeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ImageModeResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.ImageModeRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.ImageModeDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.ImageModeListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.ImageModeListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.ImageModeResponse> partialUpdate_Pre($grpc.ServiceCall call,
      $async.Future<$0.ImageModePartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.ImageModeResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.ImageModeRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.ImageModeResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.ImageModeRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.ImageModeResponse> create(
      $grpc.ServiceCall call, $0.ImageModeRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.ImageModeDestroyRequest request);
  $async.Future<$0.ImageModeListResponse> list(
      $grpc.ServiceCall call, $0.ImageModeListRequest request);
  $async.Future<$0.ImageModeResponse> partialUpdate(
      $grpc.ServiceCall call, $0.ImageModePartialUpdateRequest request);
  $async.Future<$0.ImageModeResponse> retrieve(
      $grpc.ServiceCall call, $0.ImageModeRetrieveRequest request);
  $async.Future<$0.ImageModeResponse> update(
      $grpc.ServiceCall call, $0.ImageModeRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.IntervalScheduleController')
class IntervalScheduleControllerClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.IntervalScheduleRequest,
          $0.IntervalScheduleResponse>(
      '/base_app.products_controller.IntervalScheduleController/Create',
      ($0.IntervalScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.IntervalScheduleResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.IntervalScheduleDestroyRequest, $1.Empty>(
          '/base_app.products_controller.IntervalScheduleController/Destroy',
          ($0.IntervalScheduleDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.IntervalScheduleListRequest,
          $0.IntervalScheduleListResponse>(
      '/base_app.products_controller.IntervalScheduleController/List',
      ($0.IntervalScheduleListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.IntervalScheduleListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<
          $0.IntervalSchedulePartialUpdateRequest, $0.IntervalScheduleResponse>(
      '/base_app.products_controller.IntervalScheduleController/PartialUpdate',
      ($0.IntervalSchedulePartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.IntervalScheduleResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<
          $0.IntervalScheduleRetrieveRequest, $0.IntervalScheduleResponse>(
      '/base_app.products_controller.IntervalScheduleController/Retrieve',
      ($0.IntervalScheduleRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.IntervalScheduleResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.IntervalScheduleRequest,
          $0.IntervalScheduleResponse>(
      '/base_app.products_controller.IntervalScheduleController/Update',
      ($0.IntervalScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.IntervalScheduleResponse.fromBuffer(value));

  IntervalScheduleControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.IntervalScheduleResponse> create(
      $0.IntervalScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy(
      $0.IntervalScheduleDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.IntervalScheduleListResponse> list(
      $0.IntervalScheduleListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.IntervalScheduleResponse> partialUpdate(
      $0.IntervalSchedulePartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.IntervalScheduleResponse> retrieve(
      $0.IntervalScheduleRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.IntervalScheduleResponse> update(
      $0.IntervalScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.IntervalScheduleController')
abstract class IntervalScheduleControllerServiceBase extends $grpc.Service {
  $core.String get $name =>
      'base_app.products_controller.IntervalScheduleController';

  IntervalScheduleControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.IntervalScheduleRequest,
            $0.IntervalScheduleResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.IntervalScheduleRequest.fromBuffer(value),
        ($0.IntervalScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IntervalScheduleDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.IntervalScheduleDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IntervalScheduleListRequest,
            $0.IntervalScheduleListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.IntervalScheduleListRequest.fromBuffer(value),
        ($0.IntervalScheduleListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IntervalSchedulePartialUpdateRequest,
            $0.IntervalScheduleResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.IntervalSchedulePartialUpdateRequest.fromBuffer(value),
        ($0.IntervalScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IntervalScheduleRetrieveRequest,
            $0.IntervalScheduleResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.IntervalScheduleRetrieveRequest.fromBuffer(value),
        ($0.IntervalScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IntervalScheduleRequest,
            $0.IntervalScheduleResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.IntervalScheduleRequest.fromBuffer(value),
        ($0.IntervalScheduleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.IntervalScheduleResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.IntervalScheduleRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.IntervalScheduleDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.IntervalScheduleListResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.IntervalScheduleListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.IntervalScheduleResponse> partialUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.IntervalSchedulePartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.IntervalScheduleResponse> retrieve_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.IntervalScheduleRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.IntervalScheduleResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.IntervalScheduleRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.IntervalScheduleResponse> create(
      $grpc.ServiceCall call, $0.IntervalScheduleRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.IntervalScheduleDestroyRequest request);
  $async.Future<$0.IntervalScheduleListResponse> list(
      $grpc.ServiceCall call, $0.IntervalScheduleListRequest request);
  $async.Future<$0.IntervalScheduleResponse> partialUpdate(
      $grpc.ServiceCall call, $0.IntervalSchedulePartialUpdateRequest request);
  $async.Future<$0.IntervalScheduleResponse> retrieve(
      $grpc.ServiceCall call, $0.IntervalScheduleRetrieveRequest request);
  $async.Future<$0.IntervalScheduleResponse> update(
      $grpc.ServiceCall call, $0.IntervalScheduleRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.LedPanelController')
class LedPanelControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.LedPanelRequest, $0.LedPanelResponse>(
          '/base_app.products_controller.LedPanelController/Create',
          ($0.LedPanelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LedPanelResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.LedPanelDestroyRequest, $1.Empty>(
          '/base_app.products_controller.LedPanelController/Destroy',
          ($0.LedPanelDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.LedPanelListRequest, $0.LedPanelListResponse>(
          '/base_app.products_controller.LedPanelController/List',
          ($0.LedPanelListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LedPanelListResponse.fromBuffer(value));
  static final _$partialUpdate =
      $grpc.ClientMethod<$0.LedPanelPartialUpdateRequest, $0.LedPanelResponse>(
          '/base_app.products_controller.LedPanelController/PartialUpdate',
          ($0.LedPanelPartialUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LedPanelResponse.fromBuffer(value));
  static final _$retrieve =
      $grpc.ClientMethod<$0.LedPanelRetrieveRequest, $0.LedPanelResponse>(
          '/base_app.products_controller.LedPanelController/Retrieve',
          ($0.LedPanelRetrieveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LedPanelResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.LedPanelRequest, $0.LedPanelResponse>(
          '/base_app.products_controller.LedPanelController/Update',
          ($0.LedPanelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LedPanelResponse.fromBuffer(value));

  LedPanelControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.LedPanelResponse> create($0.LedPanelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.LedPanelDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedPanelListResponse> list(
      $0.LedPanelListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedPanelResponse> partialUpdate(
      $0.LedPanelPartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedPanelResponse> retrieve(
      $0.LedPanelRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedPanelResponse> update($0.LedPanelRequest request,
      {$grpc.CallOptions? options}) {
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
        ($core.List<$core.int> value) =>
            $0.LedPanelDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.LedPanelListRequest, $0.LedPanelListResponse>(
            'List',
            list_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.LedPanelListRequest.fromBuffer(value),
            ($0.LedPanelListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedPanelPartialUpdateRequest,
            $0.LedPanelResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.LedPanelPartialUpdateRequest.fromBuffer(value),
        ($0.LedPanelResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.LedPanelRetrieveRequest, $0.LedPanelResponse>(
            'Retrieve',
            retrieve_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.LedPanelRetrieveRequest.fromBuffer(value),
            ($0.LedPanelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedPanelRequest, $0.LedPanelResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedPanelRequest.fromBuffer(value),
        ($0.LedPanelResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LedPanelResponse> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LedPanelRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.LedPanelDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.LedPanelListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.LedPanelListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.LedPanelResponse> partialUpdate_Pre($grpc.ServiceCall call,
      $async.Future<$0.LedPanelPartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.LedPanelResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.LedPanelRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.LedPanelResponse> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LedPanelRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.LedPanelResponse> create(
      $grpc.ServiceCall call, $0.LedPanelRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.LedPanelDestroyRequest request);
  $async.Future<$0.LedPanelListResponse> list(
      $grpc.ServiceCall call, $0.LedPanelListRequest request);
  $async.Future<$0.LedPanelResponse> partialUpdate(
      $grpc.ServiceCall call, $0.LedPanelPartialUpdateRequest request);
  $async.Future<$0.LedPanelResponse> retrieve(
      $grpc.ServiceCall call, $0.LedPanelRetrieveRequest request);
  $async.Future<$0.LedPanelResponse> update(
      $grpc.ServiceCall call, $0.LedPanelRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.PatternModeController')
class PatternModeControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.PatternModeRequest, $0.PatternModeResponse>(
          '/base_app.products_controller.PatternModeController/Create',
          ($0.PatternModeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PatternModeResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.PatternModeDestroyRequest, $1.Empty>(
          '/base_app.products_controller.PatternModeController/Destroy',
          ($0.PatternModeDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.PatternModeListRequest, $0.PatternModeListResponse>(
          '/base_app.products_controller.PatternModeController/List',
          ($0.PatternModeListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PatternModeListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<
          $0.PatternModePartialUpdateRequest, $0.PatternModeResponse>(
      '/base_app.products_controller.PatternModeController/PartialUpdate',
      ($0.PatternModePartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.PatternModeResponse.fromBuffer(value));
  static final _$retrieve =
      $grpc.ClientMethod<$0.PatternModeRetrieveRequest, $0.PatternModeResponse>(
          '/base_app.products_controller.PatternModeController/Retrieve',
          ($0.PatternModeRetrieveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PatternModeResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.PatternModeRequest, $0.PatternModeResponse>(
          '/base_app.products_controller.PatternModeController/Update',
          ($0.PatternModeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PatternModeResponse.fromBuffer(value));

  PatternModeControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PatternModeResponse> create(
      $0.PatternModeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.PatternModeDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.PatternModeListResponse> list(
      $0.PatternModeListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.PatternModeResponse> partialUpdate(
      $0.PatternModePartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.PatternModeResponse> retrieve(
      $0.PatternModeRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.PatternModeResponse> update(
      $0.PatternModeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.PatternModeController')
abstract class PatternModeControllerServiceBase extends $grpc.Service {
  $core.String get $name =>
      'base_app.products_controller.PatternModeController';

  PatternModeControllerServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.PatternModeRequest, $0.PatternModeResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PatternModeRequest.fromBuffer(value),
            ($0.PatternModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PatternModeDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PatternModeDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PatternModeListRequest,
            $0.PatternModeListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PatternModeListRequest.fromBuffer(value),
        ($0.PatternModeListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PatternModePartialUpdateRequest,
            $0.PatternModeResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PatternModePartialUpdateRequest.fromBuffer(value),
        ($0.PatternModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PatternModeRetrieveRequest,
            $0.PatternModeResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PatternModeRetrieveRequest.fromBuffer(value),
        ($0.PatternModeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.PatternModeRequest, $0.PatternModeResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PatternModeRequest.fromBuffer(value),
            ($0.PatternModeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PatternModeResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.PatternModeRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.PatternModeDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.PatternModeListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.PatternModeListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.PatternModeResponse> partialUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PatternModePartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.PatternModeResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.PatternModeRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.PatternModeResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.PatternModeRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.PatternModeResponse> create(
      $grpc.ServiceCall call, $0.PatternModeRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.PatternModeDestroyRequest request);
  $async.Future<$0.PatternModeListResponse> list(
      $grpc.ServiceCall call, $0.PatternModeListRequest request);
  $async.Future<$0.PatternModeResponse> partialUpdate(
      $grpc.ServiceCall call, $0.PatternModePartialUpdateRequest request);
  $async.Future<$0.PatternModeResponse> retrieve(
      $grpc.ServiceCall call, $0.PatternModeRetrieveRequest request);
  $async.Future<$0.PatternModeResponse> update(
      $grpc.ServiceCall call, $0.PatternModeRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.PeriodicTaskController')
class PeriodicTaskControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.PeriodicTaskRequest, $0.PeriodicTaskResponse>(
          '/base_app.products_controller.PeriodicTaskController/Create',
          ($0.PeriodicTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PeriodicTaskResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.PeriodicTaskDestroyRequest, $1.Empty>(
          '/base_app.products_controller.PeriodicTaskController/Destroy',
          ($0.PeriodicTaskDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.PeriodicTaskListRequest,
          $0.PeriodicTaskListResponse>(
      '/base_app.products_controller.PeriodicTaskController/List',
      ($0.PeriodicTaskListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.PeriodicTaskListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<
          $0.PeriodicTaskPartialUpdateRequest, $0.PeriodicTaskResponse>(
      '/base_app.products_controller.PeriodicTaskController/PartialUpdate',
      ($0.PeriodicTaskPartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.PeriodicTaskResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<$0.PeriodicTaskRetrieveRequest,
          $0.PeriodicTaskResponse>(
      '/base_app.products_controller.PeriodicTaskController/Retrieve',
      ($0.PeriodicTaskRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.PeriodicTaskResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.PeriodicTaskRequest, $0.PeriodicTaskResponse>(
          '/base_app.products_controller.PeriodicTaskController/Update',
          ($0.PeriodicTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PeriodicTaskResponse.fromBuffer(value));

  PeriodicTaskControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PeriodicTaskResponse> create(
      $0.PeriodicTaskRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.PeriodicTaskDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.PeriodicTaskListResponse> list(
      $0.PeriodicTaskListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.PeriodicTaskResponse> partialUpdate(
      $0.PeriodicTaskPartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.PeriodicTaskResponse> retrieve(
      $0.PeriodicTaskRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.PeriodicTaskResponse> update(
      $0.PeriodicTaskRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.PeriodicTaskController')
abstract class PeriodicTaskControllerServiceBase extends $grpc.Service {
  $core.String get $name =>
      'base_app.products_controller.PeriodicTaskController';

  PeriodicTaskControllerServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.PeriodicTaskRequest, $0.PeriodicTaskResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PeriodicTaskRequest.fromBuffer(value),
            ($0.PeriodicTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PeriodicTaskDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PeriodicTaskDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PeriodicTaskListRequest,
            $0.PeriodicTaskListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PeriodicTaskListRequest.fromBuffer(value),
        ($0.PeriodicTaskListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PeriodicTaskPartialUpdateRequest,
            $0.PeriodicTaskResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PeriodicTaskPartialUpdateRequest.fromBuffer(value),
        ($0.PeriodicTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PeriodicTaskRetrieveRequest,
            $0.PeriodicTaskResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PeriodicTaskRetrieveRequest.fromBuffer(value),
        ($0.PeriodicTaskResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.PeriodicTaskRequest, $0.PeriodicTaskResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PeriodicTaskRequest.fromBuffer(value),
            ($0.PeriodicTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PeriodicTaskResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.PeriodicTaskRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.PeriodicTaskDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.PeriodicTaskListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.PeriodicTaskListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.PeriodicTaskResponse> partialUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PeriodicTaskPartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.PeriodicTaskResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.PeriodicTaskRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.PeriodicTaskResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.PeriodicTaskRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.PeriodicTaskResponse> create(
      $grpc.ServiceCall call, $0.PeriodicTaskRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.PeriodicTaskDestroyRequest request);
  $async.Future<$0.PeriodicTaskListResponse> list(
      $grpc.ServiceCall call, $0.PeriodicTaskListRequest request);
  $async.Future<$0.PeriodicTaskResponse> partialUpdate(
      $grpc.ServiceCall call, $0.PeriodicTaskPartialUpdateRequest request);
  $async.Future<$0.PeriodicTaskResponse> retrieve(
      $grpc.ServiceCall call, $0.PeriodicTaskRetrieveRequest request);
  $async.Future<$0.PeriodicTaskResponse> update(
      $grpc.ServiceCall call, $0.PeriodicTaskRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.ProjectController')
class ProjectControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.ProjectRequest, $0.ProjectResponse>(
          '/base_app.products_controller.ProjectController/Create',
          ($0.ProjectRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ProjectResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.ProjectDestroyRequest, $1.Empty>(
          '/base_app.products_controller.ProjectController/Destroy',
          ($0.ProjectDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.ProjectListRequest, $0.ProjectListResponse>(
          '/base_app.products_controller.ProjectController/List',
          ($0.ProjectListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ProjectListResponse.fromBuffer(value));
  static final _$partialUpdate =
      $grpc.ClientMethod<$0.ProjectPartialUpdateRequest, $0.ProjectResponse>(
          '/base_app.products_controller.ProjectController/PartialUpdate',
          ($0.ProjectPartialUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ProjectResponse.fromBuffer(value));
  static final _$retrieve =
      $grpc.ClientMethod<$0.ProjectRetrieveRequest, $0.ProjectResponse>(
          '/base_app.products_controller.ProjectController/Retrieve',
          ($0.ProjectRetrieveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ProjectResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.ProjectRequest, $0.ProjectResponse>(
          '/base_app.products_controller.ProjectController/Update',
          ($0.ProjectRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ProjectResponse.fromBuffer(value));

  ProjectControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ProjectResponse> create($0.ProjectRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.ProjectDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProjectListResponse> list(
      $0.ProjectListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProjectResponse> partialUpdate(
      $0.ProjectPartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProjectResponse> retrieve(
      $0.ProjectRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProjectResponse> update($0.ProjectRequest request,
      {$grpc.CallOptions? options}) {
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
        ($core.List<$core.int> value) =>
            $0.ProjectDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ProjectListRequest, $0.ProjectListResponse>(
            'List',
            list_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ProjectListRequest.fromBuffer(value),
            ($0.ProjectListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ProjectPartialUpdateRequest, $0.ProjectResponse>(
            'PartialUpdate',
            partialUpdate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ProjectPartialUpdateRequest.fromBuffer(value),
            ($0.ProjectResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ProjectRetrieveRequest, $0.ProjectResponse>(
            'Retrieve',
            retrieve_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ProjectRetrieveRequest.fromBuffer(value),
            ($0.ProjectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProjectRequest, $0.ProjectResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProjectRequest.fromBuffer(value),
        ($0.ProjectResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ProjectResponse> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProjectRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.ProjectDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.ProjectListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.ProjectListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.ProjectResponse> partialUpdate_Pre($grpc.ServiceCall call,
      $async.Future<$0.ProjectPartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.ProjectResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.ProjectRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.ProjectResponse> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProjectRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.ProjectResponse> create(
      $grpc.ServiceCall call, $0.ProjectRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.ProjectDestroyRequest request);
  $async.Future<$0.ProjectListResponse> list(
      $grpc.ServiceCall call, $0.ProjectListRequest request);
  $async.Future<$0.ProjectResponse> partialUpdate(
      $grpc.ServiceCall call, $0.ProjectPartialUpdateRequest request);
  $async.Future<$0.ProjectResponse> retrieve(
      $grpc.ServiceCall call, $0.ProjectRetrieveRequest request);
  $async.Future<$0.ProjectResponse> update(
      $grpc.ServiceCall call, $0.ProjectRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.SolarScheduleController')
class SolarScheduleControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.SolarScheduleRequest, $0.SolarScheduleResponse>(
          '/base_app.products_controller.SolarScheduleController/Create',
          ($0.SolarScheduleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SolarScheduleResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.SolarScheduleDestroyRequest, $1.Empty>(
          '/base_app.products_controller.SolarScheduleController/Destroy',
          ($0.SolarScheduleDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.SolarScheduleListRequest,
          $0.SolarScheduleListResponse>(
      '/base_app.products_controller.SolarScheduleController/List',
      ($0.SolarScheduleListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SolarScheduleListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<
          $0.SolarSchedulePartialUpdateRequest, $0.SolarScheduleResponse>(
      '/base_app.products_controller.SolarScheduleController/PartialUpdate',
      ($0.SolarSchedulePartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SolarScheduleResponse.fromBuffer(value));
  static final _$retrieve = $grpc.ClientMethod<$0.SolarScheduleRetrieveRequest,
          $0.SolarScheduleResponse>(
      '/base_app.products_controller.SolarScheduleController/Retrieve',
      ($0.SolarScheduleRetrieveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SolarScheduleResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.SolarScheduleRequest, $0.SolarScheduleResponse>(
          '/base_app.products_controller.SolarScheduleController/Update',
          ($0.SolarScheduleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SolarScheduleResponse.fromBuffer(value));

  SolarScheduleControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SolarScheduleResponse> create(
      $0.SolarScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.SolarScheduleDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.SolarScheduleListResponse> list(
      $0.SolarScheduleListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.SolarScheduleResponse> partialUpdate(
      $0.SolarSchedulePartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.SolarScheduleResponse> retrieve(
      $0.SolarScheduleRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.SolarScheduleResponse> update(
      $0.SolarScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.SolarScheduleController')
abstract class SolarScheduleControllerServiceBase extends $grpc.Service {
  $core.String get $name =>
      'base_app.products_controller.SolarScheduleController';

  SolarScheduleControllerServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.SolarScheduleRequest, $0.SolarScheduleResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SolarScheduleRequest.fromBuffer(value),
            ($0.SolarScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SolarScheduleDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SolarScheduleDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SolarScheduleListRequest,
            $0.SolarScheduleListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SolarScheduleListRequest.fromBuffer(value),
        ($0.SolarScheduleListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SolarSchedulePartialUpdateRequest,
            $0.SolarScheduleResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SolarSchedulePartialUpdateRequest.fromBuffer(value),
        ($0.SolarScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SolarScheduleRetrieveRequest,
            $0.SolarScheduleResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SolarScheduleRetrieveRequest.fromBuffer(value),
        ($0.SolarScheduleResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SolarScheduleRequest, $0.SolarScheduleResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SolarScheduleRequest.fromBuffer(value),
            ($0.SolarScheduleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SolarScheduleResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.SolarScheduleRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.SolarScheduleDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.SolarScheduleListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.SolarScheduleListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.SolarScheduleResponse> partialUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SolarSchedulePartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.SolarScheduleResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.SolarScheduleRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.SolarScheduleResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.SolarScheduleRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.SolarScheduleResponse> create(
      $grpc.ServiceCall call, $0.SolarScheduleRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.SolarScheduleDestroyRequest request);
  $async.Future<$0.SolarScheduleListResponse> list(
      $grpc.ServiceCall call, $0.SolarScheduleListRequest request);
  $async.Future<$0.SolarScheduleResponse> partialUpdate(
      $grpc.ServiceCall call, $0.SolarSchedulePartialUpdateRequest request);
  $async.Future<$0.SolarScheduleResponse> retrieve(
      $grpc.ServiceCall call, $0.SolarScheduleRetrieveRequest request);
  $async.Future<$0.SolarScheduleResponse> update(
      $grpc.ServiceCall call, $0.SolarScheduleRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.UserController')
class UserControllerClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.UserRequest, $0.UserResponse>(
      '/base_app.products_controller.UserController/Create',
      ($0.UserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$destroy = $grpc.ClientMethod<$0.UserDestroyRequest, $1.Empty>(
      '/base_app.products_controller.UserController/Destroy',
      ($0.UserDestroyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.UserListRequest, $0.UserListResponse>(
          '/base_app.products_controller.UserController/List',
          ($0.UserListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserListResponse.fromBuffer(value));
  static final _$partialUpdate =
      $grpc.ClientMethod<$0.UserPartialUpdateRequest, $0.UserResponse>(
          '/base_app.products_controller.UserController/PartialUpdate',
          ($0.UserPartialUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$retrieve =
      $grpc.ClientMethod<$0.UserRetrieveRequest, $0.UserResponse>(
          '/base_app.products_controller.UserController/Retrieve',
          ($0.UserRetrieveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.UserRequest, $0.UserResponse>(
      '/base_app.products_controller.UserController/Update',
      ($0.UserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));

  UserControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserResponse> create($0.UserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.UserDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserListResponse> list($0.UserListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserResponse> partialUpdate(
      $0.UserPartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserResponse> retrieve($0.UserRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserResponse> update($0.UserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.UserController')
abstract class UserControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'base_app.products_controller.UserController';

  UserControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserRequest, $0.UserResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UserDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserListRequest, $0.UserListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserListRequest.fromBuffer(value),
        ($0.UserListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UserPartialUpdateRequest, $0.UserResponse>(
            'PartialUpdate',
            partialUpdate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UserPartialUpdateRequest.fromBuffer(value),
            ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserRetrieveRequest, $0.UserResponse>(
        'Retrieve',
        retrieve_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UserRetrieveRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserRequest, $0.UserResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserResponse> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.UserListResponse> list_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.UserResponse> partialUpdate_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserPartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.UserResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.UserResponse> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.UserResponse> create(
      $grpc.ServiceCall call, $0.UserRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.UserDestroyRequest request);
  $async.Future<$0.UserListResponse> list(
      $grpc.ServiceCall call, $0.UserListRequest request);
  $async.Future<$0.UserResponse> partialUpdate(
      $grpc.ServiceCall call, $0.UserPartialUpdateRequest request);
  $async.Future<$0.UserResponse> retrieve(
      $grpc.ServiceCall call, $0.UserRetrieveRequest request);
  $async.Future<$0.UserResponse> update(
      $grpc.ServiceCall call, $0.UserRequest request);
}

@$pb.GrpcServiceName('base_app.products_controller.VideoModeController')
class VideoModeControllerClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.VideoModeRequest, $0.VideoModeResponse>(
          '/base_app.products_controller.VideoModeController/Create',
          ($0.VideoModeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VideoModeResponse.fromBuffer(value));
  static final _$destroy =
      $grpc.ClientMethod<$0.VideoModeDestroyRequest, $1.Empty>(
          '/base_app.products_controller.VideoModeController/Destroy',
          ($0.VideoModeDestroyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.VideoModeListRequest, $0.VideoModeListResponse>(
          '/base_app.products_controller.VideoModeController/List',
          ($0.VideoModeListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VideoModeListResponse.fromBuffer(value));
  static final _$partialUpdate = $grpc.ClientMethod<
          $0.VideoModePartialUpdateRequest, $0.VideoModeResponse>(
      '/base_app.products_controller.VideoModeController/PartialUpdate',
      ($0.VideoModePartialUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.VideoModeResponse.fromBuffer(value));
  static final _$retrieve =
      $grpc.ClientMethod<$0.VideoModeRetrieveRequest, $0.VideoModeResponse>(
          '/base_app.products_controller.VideoModeController/Retrieve',
          ($0.VideoModeRetrieveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VideoModeResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.VideoModeRequest, $0.VideoModeResponse>(
          '/base_app.products_controller.VideoModeController/Update',
          ($0.VideoModeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VideoModeResponse.fromBuffer(value));

  VideoModeControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.VideoModeResponse> create($0.VideoModeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> destroy($0.VideoModeDestroyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$destroy, request, options: options);
  }

  $grpc.ResponseFuture<$0.VideoModeListResponse> list(
      $0.VideoModeListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.VideoModeResponse> partialUpdate(
      $0.VideoModePartialUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partialUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.VideoModeResponse> retrieve(
      $0.VideoModeRetrieveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieve, request, options: options);
  }

  $grpc.ResponseFuture<$0.VideoModeResponse> update($0.VideoModeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('base_app.products_controller.VideoModeController')
abstract class VideoModeControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'base_app.products_controller.VideoModeController';

  VideoModeControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.VideoModeRequest, $0.VideoModeResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VideoModeRequest.fromBuffer(value),
        ($0.VideoModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VideoModeDestroyRequest, $1.Empty>(
        'Destroy',
        destroy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.VideoModeDestroyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.VideoModeListRequest, $0.VideoModeListResponse>(
            'List',
            list_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.VideoModeListRequest.fromBuffer(value),
            ($0.VideoModeListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VideoModePartialUpdateRequest,
            $0.VideoModeResponse>(
        'PartialUpdate',
        partialUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.VideoModePartialUpdateRequest.fromBuffer(value),
        ($0.VideoModeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.VideoModeRetrieveRequest, $0.VideoModeResponse>(
            'Retrieve',
            retrieve_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.VideoModeRetrieveRequest.fromBuffer(value),
            ($0.VideoModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VideoModeRequest, $0.VideoModeResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VideoModeRequest.fromBuffer(value),
        ($0.VideoModeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.VideoModeResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.VideoModeRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> destroy_Pre($grpc.ServiceCall call,
      $async.Future<$0.VideoModeDestroyRequest> request) async {
    return destroy(call, await request);
  }

  $async.Future<$0.VideoModeListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.VideoModeListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.VideoModeResponse> partialUpdate_Pre($grpc.ServiceCall call,
      $async.Future<$0.VideoModePartialUpdateRequest> request) async {
    return partialUpdate(call, await request);
  }

  $async.Future<$0.VideoModeResponse> retrieve_Pre($grpc.ServiceCall call,
      $async.Future<$0.VideoModeRetrieveRequest> request) async {
    return retrieve(call, await request);
  }

  $async.Future<$0.VideoModeResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.VideoModeRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.VideoModeResponse> create(
      $grpc.ServiceCall call, $0.VideoModeRequest request);
  $async.Future<$1.Empty> destroy(
      $grpc.ServiceCall call, $0.VideoModeDestroyRequest request);
  $async.Future<$0.VideoModeListResponse> list(
      $grpc.ServiceCall call, $0.VideoModeListRequest request);
  $async.Future<$0.VideoModeResponse> partialUpdate(
      $grpc.ServiceCall call, $0.VideoModePartialUpdateRequest request);
  $async.Future<$0.VideoModeResponse> retrieve(
      $grpc.ServiceCall call, $0.VideoModeRetrieveRequest request);
  $async.Future<$0.VideoModeResponse> update(
      $grpc.ServiceCall call, $0.VideoModeRequest request);
}
