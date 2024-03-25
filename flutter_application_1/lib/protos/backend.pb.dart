//
//  Generated code. Do not modify.
//  source: backend.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BaseProductDestroyRequest extends $pb.GeneratedMessage {
  factory BaseProductDestroyRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  BaseProductDestroyRequest._() : super();
  factory BaseProductDestroyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseProductDestroyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BaseProductDestroyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseProductDestroyRequest clone() => BaseProductDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseProductDestroyRequest copyWith(void Function(BaseProductDestroyRequest) updates) => super.copyWith((message) => updates(message as BaseProductDestroyRequest)) as BaseProductDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseProductDestroyRequest create() => BaseProductDestroyRequest._();
  BaseProductDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<BaseProductDestroyRequest> createRepeated() => $pb.PbList<BaseProductDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static BaseProductDestroyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseProductDestroyRequest>(create);
  static BaseProductDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class BaseProductListRequest extends $pb.GeneratedMessage {
  factory BaseProductListRequest() => create();
  BaseProductListRequest._() : super();
  factory BaseProductListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseProductListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BaseProductListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseProductListRequest clone() => BaseProductListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseProductListRequest copyWith(void Function(BaseProductListRequest) updates) => super.copyWith((message) => updates(message as BaseProductListRequest)) as BaseProductListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseProductListRequest create() => BaseProductListRequest._();
  BaseProductListRequest createEmptyInstance() => create();
  static $pb.PbList<BaseProductListRequest> createRepeated() => $pb.PbList<BaseProductListRequest>();
  @$core.pragma('dart2js:noInline')
  static BaseProductListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseProductListRequest>(create);
  static BaseProductListRequest? _defaultInstance;
}

class BaseProductListResponse extends $pb.GeneratedMessage {
  factory BaseProductListResponse({
    $core.Iterable<BaseProductResponse>? results,
    $core.int? count,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  BaseProductListResponse._() : super();
  factory BaseProductListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseProductListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BaseProductListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pc<BaseProductResponse>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: BaseProductResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseProductListResponse clone() => BaseProductListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseProductListResponse copyWith(void Function(BaseProductListResponse) updates) => super.copyWith((message) => updates(message as BaseProductListResponse)) as BaseProductListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseProductListResponse create() => BaseProductListResponse._();
  BaseProductListResponse createEmptyInstance() => create();
  static $pb.PbList<BaseProductListResponse> createRepeated() => $pb.PbList<BaseProductListResponse>();
  @$core.pragma('dart2js:noInline')
  static BaseProductListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseProductListResponse>(create);
  static BaseProductListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BaseProductResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class BaseProductPartialUpdateRequest extends $pb.GeneratedMessage {
  factory BaseProductPartialUpdateRequest({
    $core.Iterable<$core.String>? categories,
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.String? name,
    $core.String? uuid,
  }) {
    final $result = create();
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (name != null) {
      $result.name = name;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  BaseProductPartialUpdateRequest._() : super();
  factory BaseProductPartialUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseProductPartialUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BaseProductPartialUpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'categories')
    ..pPS(3, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseProductPartialUpdateRequest clone() => BaseProductPartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseProductPartialUpdateRequest copyWith(void Function(BaseProductPartialUpdateRequest) updates) => super.copyWith((message) => updates(message as BaseProductPartialUpdateRequest)) as BaseProductPartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseProductPartialUpdateRequest create() => BaseProductPartialUpdateRequest._();
  BaseProductPartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<BaseProductPartialUpdateRequest> createRepeated() => $pb.PbList<BaseProductPartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static BaseProductPartialUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseProductPartialUpdateRequest>(create);
  static BaseProductPartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.String> get categories => $_getList(0);

  @$pb.TagNumber(3)
  $core.List<$core.String> get partialUpdateFields => $_getList(1);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get uuid => $_getSZ(3);
  @$pb.TagNumber(5)
  set uuid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasUuid() => $_has(3);
  @$pb.TagNumber(5)
  void clearUuid() => clearField(5);
}

class BaseProductRequest extends $pb.GeneratedMessage {
  factory BaseProductRequest({
    $core.Iterable<$core.String>? categories,
    $core.String? name,
    $core.String? uuid,
  }) {
    final $result = create();
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (name != null) {
      $result.name = name;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  BaseProductRequest._() : super();
  factory BaseProductRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseProductRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BaseProductRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'categories')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseProductRequest clone() => BaseProductRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseProductRequest copyWith(void Function(BaseProductRequest) updates) => super.copyWith((message) => updates(message as BaseProductRequest)) as BaseProductRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseProductRequest create() => BaseProductRequest._();
  BaseProductRequest createEmptyInstance() => create();
  static $pb.PbList<BaseProductRequest> createRepeated() => $pb.PbList<BaseProductRequest>();
  @$core.pragma('dart2js:noInline')
  static BaseProductRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseProductRequest>(create);
  static BaseProductRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.String> get categories => $_getList(0);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uuid => $_getSZ(2);
  @$pb.TagNumber(4)
  set uuid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasUuid() => $_has(2);
  @$pb.TagNumber(4)
  void clearUuid() => clearField(4);
}

class BaseProductResponse extends $pb.GeneratedMessage {
  factory BaseProductResponse({
    $core.Iterable<$core.String>? categories,
    $core.String? name,
    $core.int? polymorphicCtype,
    $core.String? uuid,
  }) {
    final $result = create();
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (name != null) {
      $result.name = name;
    }
    if (polymorphicCtype != null) {
      $result.polymorphicCtype = polymorphicCtype;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  BaseProductResponse._() : super();
  factory BaseProductResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseProductResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BaseProductResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'categories')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'polymorphicCtype', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseProductResponse clone() => BaseProductResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseProductResponse copyWith(void Function(BaseProductResponse) updates) => super.copyWith((message) => updates(message as BaseProductResponse)) as BaseProductResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseProductResponse create() => BaseProductResponse._();
  BaseProductResponse createEmptyInstance() => create();
  static $pb.PbList<BaseProductResponse> createRepeated() => $pb.PbList<BaseProductResponse>();
  @$core.pragma('dart2js:noInline')
  static BaseProductResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseProductResponse>(create);
  static BaseProductResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.String> get categories => $_getList(0);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get polymorphicCtype => $_getIZ(2);
  @$pb.TagNumber(4)
  set polymorphicCtype($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPolymorphicCtype() => $_has(2);
  @$pb.TagNumber(4)
  void clearPolymorphicCtype() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get uuid => $_getSZ(3);
  @$pb.TagNumber(5)
  set uuid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasUuid() => $_has(3);
  @$pb.TagNumber(5)
  void clearUuid() => clearField(5);
}

class BaseProductRetrieveRequest extends $pb.GeneratedMessage {
  factory BaseProductRetrieveRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  BaseProductRetrieveRequest._() : super();
  factory BaseProductRetrieveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BaseProductRetrieveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BaseProductRetrieveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BaseProductRetrieveRequest clone() => BaseProductRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BaseProductRetrieveRequest copyWith(void Function(BaseProductRetrieveRequest) updates) => super.copyWith((message) => updates(message as BaseProductRetrieveRequest)) as BaseProductRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseProductRetrieveRequest create() => BaseProductRetrieveRequest._();
  BaseProductRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<BaseProductRetrieveRequest> createRepeated() => $pb.PbList<BaseProductRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static BaseProductRetrieveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseProductRetrieveRequest>(create);
  static BaseProductRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class CategoryDestroyRequest extends $pb.GeneratedMessage {
  factory CategoryDestroyRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  CategoryDestroyRequest._() : super();
  factory CategoryDestroyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryDestroyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategoryDestroyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryDestroyRequest clone() => CategoryDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryDestroyRequest copyWith(void Function(CategoryDestroyRequest) updates) => super.copyWith((message) => updates(message as CategoryDestroyRequest)) as CategoryDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryDestroyRequest create() => CategoryDestroyRequest._();
  CategoryDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryDestroyRequest> createRepeated() => $pb.PbList<CategoryDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryDestroyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryDestroyRequest>(create);
  static CategoryDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class CategoryListRequest extends $pb.GeneratedMessage {
  factory CategoryListRequest() => create();
  CategoryListRequest._() : super();
  factory CategoryListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategoryListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryListRequest clone() => CategoryListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryListRequest copyWith(void Function(CategoryListRequest) updates) => super.copyWith((message) => updates(message as CategoryListRequest)) as CategoryListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryListRequest create() => CategoryListRequest._();
  CategoryListRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryListRequest> createRepeated() => $pb.PbList<CategoryListRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryListRequest>(create);
  static CategoryListRequest? _defaultInstance;
}

class CategoryListResponse extends $pb.GeneratedMessage {
  factory CategoryListResponse({
    $core.Iterable<CategoryResponse>? results,
    $core.int? count,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  CategoryListResponse._() : super();
  factory CategoryListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategoryListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pc<CategoryResponse>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: CategoryResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryListResponse clone() => CategoryListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryListResponse copyWith(void Function(CategoryListResponse) updates) => super.copyWith((message) => updates(message as CategoryListResponse)) as CategoryListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryListResponse create() => CategoryListResponse._();
  CategoryListResponse createEmptyInstance() => create();
  static $pb.PbList<CategoryListResponse> createRepeated() => $pb.PbList<CategoryListResponse>();
  @$core.pragma('dart2js:noInline')
  static CategoryListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryListResponse>(create);
  static CategoryListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CategoryResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class CategoryPartialUpdateRequest extends $pb.GeneratedMessage {
  factory CategoryPartialUpdateRequest({
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.String? name,
    $core.String? uuid,
  }) {
    final $result = create();
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (name != null) {
      $result.name = name;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  CategoryPartialUpdateRequest._() : super();
  factory CategoryPartialUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryPartialUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategoryPartialUpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryPartialUpdateRequest clone() => CategoryPartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryPartialUpdateRequest copyWith(void Function(CategoryPartialUpdateRequest) updates) => super.copyWith((message) => updates(message as CategoryPartialUpdateRequest)) as CategoryPartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryPartialUpdateRequest create() => CategoryPartialUpdateRequest._();
  CategoryPartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryPartialUpdateRequest> createRepeated() => $pb.PbList<CategoryPartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryPartialUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryPartialUpdateRequest>(create);
  static CategoryPartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.String> get partialUpdateFields => $_getList(0);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uuid => $_getSZ(2);
  @$pb.TagNumber(4)
  set uuid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasUuid() => $_has(2);
  @$pb.TagNumber(4)
  void clearUuid() => clearField(4);
}

class CategoryRequest extends $pb.GeneratedMessage {
  factory CategoryRequest({
    $core.String? name,
    $core.String? uuid,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  CategoryRequest._() : super();
  factory CategoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryRequest clone() => CategoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryRequest copyWith(void Function(CategoryRequest) updates) => super.copyWith((message) => updates(message as CategoryRequest)) as CategoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryRequest create() => CategoryRequest._();
  CategoryRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryRequest> createRepeated() => $pb.PbList<CategoryRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryRequest>(create);
  static CategoryRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get uuid => $_getSZ(1);
  @$pb.TagNumber(3)
  set uuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasUuid() => $_has(1);
  @$pb.TagNumber(3)
  void clearUuid() => clearField(3);
}

class CategoryResponse extends $pb.GeneratedMessage {
  factory CategoryResponse({
    $core.String? name,
    $core.String? uuid,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  CategoryResponse._() : super();
  factory CategoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryResponse clone() => CategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryResponse copyWith(void Function(CategoryResponse) updates) => super.copyWith((message) => updates(message as CategoryResponse)) as CategoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryResponse create() => CategoryResponse._();
  CategoryResponse createEmptyInstance() => create();
  static $pb.PbList<CategoryResponse> createRepeated() => $pb.PbList<CategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static CategoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryResponse>(create);
  static CategoryResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get uuid => $_getSZ(1);
  @$pb.TagNumber(3)
  set uuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasUuid() => $_has(1);
  @$pb.TagNumber(3)
  void clearUuid() => clearField(3);
}

class CategoryRetrieveRequest extends $pb.GeneratedMessage {
  factory CategoryRetrieveRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  CategoryRetrieveRequest._() : super();
  factory CategoryRetrieveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryRetrieveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategoryRetrieveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryRetrieveRequest clone() => CategoryRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryRetrieveRequest copyWith(void Function(CategoryRetrieveRequest) updates) => super.copyWith((message) => updates(message as CategoryRetrieveRequest)) as CategoryRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryRetrieveRequest create() => CategoryRetrieveRequest._();
  CategoryRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryRetrieveRequest> createRepeated() => $pb.PbList<CategoryRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryRetrieveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryRetrieveRequest>(create);
  static CategoryRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class CoffeeMachineDestroyRequest extends $pb.GeneratedMessage {
  factory CoffeeMachineDestroyRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  CoffeeMachineDestroyRequest._() : super();
  factory CoffeeMachineDestroyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CoffeeMachineDestroyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CoffeeMachineDestroyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CoffeeMachineDestroyRequest clone() => CoffeeMachineDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CoffeeMachineDestroyRequest copyWith(void Function(CoffeeMachineDestroyRequest) updates) => super.copyWith((message) => updates(message as CoffeeMachineDestroyRequest)) as CoffeeMachineDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineDestroyRequest create() => CoffeeMachineDestroyRequest._();
  CoffeeMachineDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineDestroyRequest> createRepeated() => $pb.PbList<CoffeeMachineDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineDestroyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CoffeeMachineDestroyRequest>(create);
  static CoffeeMachineDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class CoffeeMachineListRequest extends $pb.GeneratedMessage {
  factory CoffeeMachineListRequest() => create();
  CoffeeMachineListRequest._() : super();
  factory CoffeeMachineListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CoffeeMachineListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CoffeeMachineListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CoffeeMachineListRequest clone() => CoffeeMachineListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CoffeeMachineListRequest copyWith(void Function(CoffeeMachineListRequest) updates) => super.copyWith((message) => updates(message as CoffeeMachineListRequest)) as CoffeeMachineListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineListRequest create() => CoffeeMachineListRequest._();
  CoffeeMachineListRequest createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineListRequest> createRepeated() => $pb.PbList<CoffeeMachineListRequest>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CoffeeMachineListRequest>(create);
  static CoffeeMachineListRequest? _defaultInstance;
}

class CoffeeMachineListResponse extends $pb.GeneratedMessage {
  factory CoffeeMachineListResponse({
    $core.Iterable<CoffeeMachineResponse>? results,
    $core.int? count,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  CoffeeMachineListResponse._() : super();
  factory CoffeeMachineListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CoffeeMachineListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CoffeeMachineListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pc<CoffeeMachineResponse>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: CoffeeMachineResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CoffeeMachineListResponse clone() => CoffeeMachineListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CoffeeMachineListResponse copyWith(void Function(CoffeeMachineListResponse) updates) => super.copyWith((message) => updates(message as CoffeeMachineListResponse)) as CoffeeMachineListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineListResponse create() => CoffeeMachineListResponse._();
  CoffeeMachineListResponse createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineListResponse> createRepeated() => $pb.PbList<CoffeeMachineListResponse>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CoffeeMachineListResponse>(create);
  static CoffeeMachineListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CoffeeMachineResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class CoffeeMachinePartialUpdateRequest extends $pb.GeneratedMessage {
  factory CoffeeMachinePartialUpdateRequest({
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.String? name,
    $core.int? status,
    $core.double? heat,
    $core.int? waterLevel,
    $core.int? usedWaterLevel,
    $core.int? coffeeLevel,
    $core.bool? filterPosition,
    $core.int? modeValue,
    $core.Iterable<$core.String>? categories,
    $core.String? uuid,
  }) {
    final $result = create();
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (name != null) {
      $result.name = name;
    }
    if (status != null) {
      $result.status = status;
    }
    if (heat != null) {
      $result.heat = heat;
    }
    if (waterLevel != null) {
      $result.waterLevel = waterLevel;
    }
    if (usedWaterLevel != null) {
      $result.usedWaterLevel = usedWaterLevel;
    }
    if (coffeeLevel != null) {
      $result.coffeeLevel = coffeeLevel;
    }
    if (filterPosition != null) {
      $result.filterPosition = filterPosition;
    }
    if (modeValue != null) {
      $result.modeValue = modeValue;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  CoffeeMachinePartialUpdateRequest._() : super();
  factory CoffeeMachinePartialUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CoffeeMachinePartialUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CoffeeMachinePartialUpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'heat', $pb.PbFieldType.OF)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'waterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'usedWaterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'coffeeLevel', $pb.PbFieldType.O3)
    ..aOB(9, _omitFieldNames ? '' : 'filterPosition')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'modeValue', $pb.PbFieldType.O3)
    ..pPS(11, _omitFieldNames ? '' : 'categories')
    ..aOS(12, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CoffeeMachinePartialUpdateRequest clone() => CoffeeMachinePartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CoffeeMachinePartialUpdateRequest copyWith(void Function(CoffeeMachinePartialUpdateRequest) updates) => super.copyWith((message) => updates(message as CoffeeMachinePartialUpdateRequest)) as CoffeeMachinePartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachinePartialUpdateRequest create() => CoffeeMachinePartialUpdateRequest._();
  CoffeeMachinePartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachinePartialUpdateRequest> createRepeated() => $pb.PbList<CoffeeMachinePartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachinePartialUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CoffeeMachinePartialUpdateRequest>(create);
  static CoffeeMachinePartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.String> get partialUpdateFields => $_getList(0);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get status => $_getIZ(2);
  @$pb.TagNumber(4)
  set status($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get heat => $_getN(3);
  @$pb.TagNumber(5)
  set heat($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasHeat() => $_has(3);
  @$pb.TagNumber(5)
  void clearHeat() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get waterLevel => $_getIZ(4);
  @$pb.TagNumber(6)
  set waterLevel($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasWaterLevel() => $_has(4);
  @$pb.TagNumber(6)
  void clearWaterLevel() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get usedWaterLevel => $_getIZ(5);
  @$pb.TagNumber(7)
  set usedWaterLevel($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasUsedWaterLevel() => $_has(5);
  @$pb.TagNumber(7)
  void clearUsedWaterLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get coffeeLevel => $_getIZ(6);
  @$pb.TagNumber(8)
  set coffeeLevel($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasCoffeeLevel() => $_has(6);
  @$pb.TagNumber(8)
  void clearCoffeeLevel() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get filterPosition => $_getBF(7);
  @$pb.TagNumber(9)
  set filterPosition($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasFilterPosition() => $_has(7);
  @$pb.TagNumber(9)
  void clearFilterPosition() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get modeValue => $_getIZ(8);
  @$pb.TagNumber(10)
  set modeValue($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasModeValue() => $_has(8);
  @$pb.TagNumber(10)
  void clearModeValue() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.String> get categories => $_getList(9);

  @$pb.TagNumber(12)
  $core.String get uuid => $_getSZ(10);
  @$pb.TagNumber(12)
  set uuid($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasUuid() => $_has(10);
  @$pb.TagNumber(12)
  void clearUuid() => clearField(12);
}

class CoffeeMachineRequest extends $pb.GeneratedMessage {
  factory CoffeeMachineRequest({
    $core.String? name,
    $core.int? status,
    $core.double? heat,
    $core.int? waterLevel,
    $core.int? usedWaterLevel,
    $core.int? coffeeLevel,
    $core.bool? filterPosition,
    $core.int? modeValue,
    $core.Iterable<$core.String>? categories,
    $core.String? uuid,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (status != null) {
      $result.status = status;
    }
    if (heat != null) {
      $result.heat = heat;
    }
    if (waterLevel != null) {
      $result.waterLevel = waterLevel;
    }
    if (usedWaterLevel != null) {
      $result.usedWaterLevel = usedWaterLevel;
    }
    if (coffeeLevel != null) {
      $result.coffeeLevel = coffeeLevel;
    }
    if (filterPosition != null) {
      $result.filterPosition = filterPosition;
    }
    if (modeValue != null) {
      $result.modeValue = modeValue;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  CoffeeMachineRequest._() : super();
  factory CoffeeMachineRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CoffeeMachineRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CoffeeMachineRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'heat', $pb.PbFieldType.OF)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'waterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'usedWaterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'coffeeLevel', $pb.PbFieldType.O3)
    ..aOB(8, _omitFieldNames ? '' : 'filterPosition')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'modeValue', $pb.PbFieldType.O3)
    ..pPS(10, _omitFieldNames ? '' : 'categories')
    ..aOS(11, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CoffeeMachineRequest clone() => CoffeeMachineRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CoffeeMachineRequest copyWith(void Function(CoffeeMachineRequest) updates) => super.copyWith((message) => updates(message as CoffeeMachineRequest)) as CoffeeMachineRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineRequest create() => CoffeeMachineRequest._();
  CoffeeMachineRequest createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineRequest> createRepeated() => $pb.PbList<CoffeeMachineRequest>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CoffeeMachineRequest>(create);
  static CoffeeMachineRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(3)
  set status($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get heat => $_getN(2);
  @$pb.TagNumber(4)
  set heat($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeat() => $_has(2);
  @$pb.TagNumber(4)
  void clearHeat() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get waterLevel => $_getIZ(3);
  @$pb.TagNumber(5)
  set waterLevel($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasWaterLevel() => $_has(3);
  @$pb.TagNumber(5)
  void clearWaterLevel() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get usedWaterLevel => $_getIZ(4);
  @$pb.TagNumber(6)
  set usedWaterLevel($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasUsedWaterLevel() => $_has(4);
  @$pb.TagNumber(6)
  void clearUsedWaterLevel() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get coffeeLevel => $_getIZ(5);
  @$pb.TagNumber(7)
  set coffeeLevel($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasCoffeeLevel() => $_has(5);
  @$pb.TagNumber(7)
  void clearCoffeeLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get filterPosition => $_getBF(6);
  @$pb.TagNumber(8)
  set filterPosition($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasFilterPosition() => $_has(6);
  @$pb.TagNumber(8)
  void clearFilterPosition() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get modeValue => $_getIZ(7);
  @$pb.TagNumber(9)
  set modeValue($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasModeValue() => $_has(7);
  @$pb.TagNumber(9)
  void clearModeValue() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.String> get categories => $_getList(8);

  @$pb.TagNumber(11)
  $core.String get uuid => $_getSZ(9);
  @$pb.TagNumber(11)
  set uuid($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasUuid() => $_has(9);
  @$pb.TagNumber(11)
  void clearUuid() => clearField(11);
}

class CoffeeMachineResponse extends $pb.GeneratedMessage {
  factory CoffeeMachineResponse({
    $core.String? name,
    $core.int? status,
    $core.double? heat,
    $core.int? waterLevel,
    $core.int? usedWaterLevel,
    $core.int? coffeeLevel,
    $core.bool? filterPosition,
    $core.int? modeValue,
    $core.int? polymorphicCtype,
    $core.Iterable<$core.String>? categories,
    $core.String? uuid,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (status != null) {
      $result.status = status;
    }
    if (heat != null) {
      $result.heat = heat;
    }
    if (waterLevel != null) {
      $result.waterLevel = waterLevel;
    }
    if (usedWaterLevel != null) {
      $result.usedWaterLevel = usedWaterLevel;
    }
    if (coffeeLevel != null) {
      $result.coffeeLevel = coffeeLevel;
    }
    if (filterPosition != null) {
      $result.filterPosition = filterPosition;
    }
    if (modeValue != null) {
      $result.modeValue = modeValue;
    }
    if (polymorphicCtype != null) {
      $result.polymorphicCtype = polymorphicCtype;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  CoffeeMachineResponse._() : super();
  factory CoffeeMachineResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CoffeeMachineResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CoffeeMachineResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'heat', $pb.PbFieldType.OF)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'waterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'usedWaterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'coffeeLevel', $pb.PbFieldType.O3)
    ..aOB(8, _omitFieldNames ? '' : 'filterPosition')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'modeValue', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'polymorphicCtype', $pb.PbFieldType.O3)
    ..pPS(11, _omitFieldNames ? '' : 'categories')
    ..aOS(12, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CoffeeMachineResponse clone() => CoffeeMachineResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CoffeeMachineResponse copyWith(void Function(CoffeeMachineResponse) updates) => super.copyWith((message) => updates(message as CoffeeMachineResponse)) as CoffeeMachineResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineResponse create() => CoffeeMachineResponse._();
  CoffeeMachineResponse createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineResponse> createRepeated() => $pb.PbList<CoffeeMachineResponse>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CoffeeMachineResponse>(create);
  static CoffeeMachineResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(3)
  set status($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get heat => $_getN(2);
  @$pb.TagNumber(4)
  set heat($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeat() => $_has(2);
  @$pb.TagNumber(4)
  void clearHeat() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get waterLevel => $_getIZ(3);
  @$pb.TagNumber(5)
  set waterLevel($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasWaterLevel() => $_has(3);
  @$pb.TagNumber(5)
  void clearWaterLevel() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get usedWaterLevel => $_getIZ(4);
  @$pb.TagNumber(6)
  set usedWaterLevel($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasUsedWaterLevel() => $_has(4);
  @$pb.TagNumber(6)
  void clearUsedWaterLevel() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get coffeeLevel => $_getIZ(5);
  @$pb.TagNumber(7)
  set coffeeLevel($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasCoffeeLevel() => $_has(5);
  @$pb.TagNumber(7)
  void clearCoffeeLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get filterPosition => $_getBF(6);
  @$pb.TagNumber(8)
  set filterPosition($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasFilterPosition() => $_has(6);
  @$pb.TagNumber(8)
  void clearFilterPosition() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get modeValue => $_getIZ(7);
  @$pb.TagNumber(9)
  set modeValue($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasModeValue() => $_has(7);
  @$pb.TagNumber(9)
  void clearModeValue() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get polymorphicCtype => $_getIZ(8);
  @$pb.TagNumber(10)
  set polymorphicCtype($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasPolymorphicCtype() => $_has(8);
  @$pb.TagNumber(10)
  void clearPolymorphicCtype() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.String> get categories => $_getList(9);

  @$pb.TagNumber(12)
  $core.String get uuid => $_getSZ(10);
  @$pb.TagNumber(12)
  set uuid($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasUuid() => $_has(10);
  @$pb.TagNumber(12)
  void clearUuid() => clearField(12);
}

class CoffeeMachineRetrieveRequest extends $pb.GeneratedMessage {
  factory CoffeeMachineRetrieveRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  CoffeeMachineRetrieveRequest._() : super();
  factory CoffeeMachineRetrieveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CoffeeMachineRetrieveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CoffeeMachineRetrieveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CoffeeMachineRetrieveRequest clone() => CoffeeMachineRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CoffeeMachineRetrieveRequest copyWith(void Function(CoffeeMachineRetrieveRequest) updates) => super.copyWith((message) => updates(message as CoffeeMachineRetrieveRequest)) as CoffeeMachineRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineRetrieveRequest create() => CoffeeMachineRetrieveRequest._();
  CoffeeMachineRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineRetrieveRequest> createRepeated() => $pb.PbList<CoffeeMachineRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineRetrieveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CoffeeMachineRetrieveRequest>(create);
  static CoffeeMachineRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class LedModeDestroyRequest extends $pb.GeneratedMessage {
  factory LedModeDestroyRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  LedModeDestroyRequest._() : super();
  factory LedModeDestroyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedModeDestroyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedModeDestroyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedModeDestroyRequest clone() => LedModeDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedModeDestroyRequest copyWith(void Function(LedModeDestroyRequest) updates) => super.copyWith((message) => updates(message as LedModeDestroyRequest)) as LedModeDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedModeDestroyRequest create() => LedModeDestroyRequest._();
  LedModeDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<LedModeDestroyRequest> createRepeated() => $pb.PbList<LedModeDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static LedModeDestroyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedModeDestroyRequest>(create);
  static LedModeDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class LedModeListRequest extends $pb.GeneratedMessage {
  factory LedModeListRequest() => create();
  LedModeListRequest._() : super();
  factory LedModeListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedModeListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedModeListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedModeListRequest clone() => LedModeListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedModeListRequest copyWith(void Function(LedModeListRequest) updates) => super.copyWith((message) => updates(message as LedModeListRequest)) as LedModeListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedModeListRequest create() => LedModeListRequest._();
  LedModeListRequest createEmptyInstance() => create();
  static $pb.PbList<LedModeListRequest> createRepeated() => $pb.PbList<LedModeListRequest>();
  @$core.pragma('dart2js:noInline')
  static LedModeListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedModeListRequest>(create);
  static LedModeListRequest? _defaultInstance;
}

class LedModeListResponse extends $pb.GeneratedMessage {
  factory LedModeListResponse({
    $core.Iterable<LedModeResponse>? results,
    $core.int? count,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  LedModeListResponse._() : super();
  factory LedModeListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedModeListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedModeListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pc<LedModeResponse>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: LedModeResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedModeListResponse clone() => LedModeListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedModeListResponse copyWith(void Function(LedModeListResponse) updates) => super.copyWith((message) => updates(message as LedModeListResponse)) as LedModeListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedModeListResponse create() => LedModeListResponse._();
  LedModeListResponse createEmptyInstance() => create();
  static $pb.PbList<LedModeListResponse> createRepeated() => $pb.PbList<LedModeListResponse>();
  @$core.pragma('dart2js:noInline')
  static LedModeListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedModeListResponse>(create);
  static LedModeListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LedModeResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class LedModePartialUpdateRequest extends $pb.GeneratedMessage {
  factory LedModePartialUpdateRequest({
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.String? name,
    $core.String? uuid,
  }) {
    final $result = create();
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (name != null) {
      $result.name = name;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  LedModePartialUpdateRequest._() : super();
  factory LedModePartialUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedModePartialUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedModePartialUpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedModePartialUpdateRequest clone() => LedModePartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedModePartialUpdateRequest copyWith(void Function(LedModePartialUpdateRequest) updates) => super.copyWith((message) => updates(message as LedModePartialUpdateRequest)) as LedModePartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedModePartialUpdateRequest create() => LedModePartialUpdateRequest._();
  LedModePartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<LedModePartialUpdateRequest> createRepeated() => $pb.PbList<LedModePartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static LedModePartialUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedModePartialUpdateRequest>(create);
  static LedModePartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.String> get partialUpdateFields => $_getList(0);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uuid => $_getSZ(2);
  @$pb.TagNumber(4)
  set uuid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasUuid() => $_has(2);
  @$pb.TagNumber(4)
  void clearUuid() => clearField(4);
}

class LedModeRequest extends $pb.GeneratedMessage {
  factory LedModeRequest({
    $core.String? name,
    $core.String? uuid,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  LedModeRequest._() : super();
  factory LedModeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedModeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedModeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedModeRequest clone() => LedModeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedModeRequest copyWith(void Function(LedModeRequest) updates) => super.copyWith((message) => updates(message as LedModeRequest)) as LedModeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedModeRequest create() => LedModeRequest._();
  LedModeRequest createEmptyInstance() => create();
  static $pb.PbList<LedModeRequest> createRepeated() => $pb.PbList<LedModeRequest>();
  @$core.pragma('dart2js:noInline')
  static LedModeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedModeRequest>(create);
  static LedModeRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get uuid => $_getSZ(1);
  @$pb.TagNumber(3)
  set uuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasUuid() => $_has(1);
  @$pb.TagNumber(3)
  void clearUuid() => clearField(3);
}

class LedModeResponse extends $pb.GeneratedMessage {
  factory LedModeResponse({
    $core.String? name,
    $core.int? polymorphicCtype,
    $core.String? uuid,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (polymorphicCtype != null) {
      $result.polymorphicCtype = polymorphicCtype;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  LedModeResponse._() : super();
  factory LedModeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedModeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedModeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'polymorphicCtype', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedModeResponse clone() => LedModeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedModeResponse copyWith(void Function(LedModeResponse) updates) => super.copyWith((message) => updates(message as LedModeResponse)) as LedModeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedModeResponse create() => LedModeResponse._();
  LedModeResponse createEmptyInstance() => create();
  static $pb.PbList<LedModeResponse> createRepeated() => $pb.PbList<LedModeResponse>();
  @$core.pragma('dart2js:noInline')
  static LedModeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedModeResponse>(create);
  static LedModeResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get polymorphicCtype => $_getIZ(1);
  @$pb.TagNumber(3)
  set polymorphicCtype($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPolymorphicCtype() => $_has(1);
  @$pb.TagNumber(3)
  void clearPolymorphicCtype() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uuid => $_getSZ(2);
  @$pb.TagNumber(4)
  set uuid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasUuid() => $_has(2);
  @$pb.TagNumber(4)
  void clearUuid() => clearField(4);
}

class LedModeRetrieveRequest extends $pb.GeneratedMessage {
  factory LedModeRetrieveRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  LedModeRetrieveRequest._() : super();
  factory LedModeRetrieveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedModeRetrieveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedModeRetrieveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedModeRetrieveRequest clone() => LedModeRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedModeRetrieveRequest copyWith(void Function(LedModeRetrieveRequest) updates) => super.copyWith((message) => updates(message as LedModeRetrieveRequest)) as LedModeRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedModeRetrieveRequest create() => LedModeRetrieveRequest._();
  LedModeRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<LedModeRetrieveRequest> createRepeated() => $pb.PbList<LedModeRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static LedModeRetrieveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedModeRetrieveRequest>(create);
  static LedModeRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class LedPanelDestroyRequest extends $pb.GeneratedMessage {
  factory LedPanelDestroyRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  LedPanelDestroyRequest._() : super();
  factory LedPanelDestroyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedPanelDestroyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedPanelDestroyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedPanelDestroyRequest clone() => LedPanelDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedPanelDestroyRequest copyWith(void Function(LedPanelDestroyRequest) updates) => super.copyWith((message) => updates(message as LedPanelDestroyRequest)) as LedPanelDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelDestroyRequest create() => LedPanelDestroyRequest._();
  LedPanelDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<LedPanelDestroyRequest> createRepeated() => $pb.PbList<LedPanelDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static LedPanelDestroyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedPanelDestroyRequest>(create);
  static LedPanelDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class LedPanelListRequest extends $pb.GeneratedMessage {
  factory LedPanelListRequest() => create();
  LedPanelListRequest._() : super();
  factory LedPanelListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedPanelListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedPanelListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedPanelListRequest clone() => LedPanelListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedPanelListRequest copyWith(void Function(LedPanelListRequest) updates) => super.copyWith((message) => updates(message as LedPanelListRequest)) as LedPanelListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelListRequest create() => LedPanelListRequest._();
  LedPanelListRequest createEmptyInstance() => create();
  static $pb.PbList<LedPanelListRequest> createRepeated() => $pb.PbList<LedPanelListRequest>();
  @$core.pragma('dart2js:noInline')
  static LedPanelListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedPanelListRequest>(create);
  static LedPanelListRequest? _defaultInstance;
}

class LedPanelListResponse extends $pb.GeneratedMessage {
  factory LedPanelListResponse({
    $core.Iterable<LedPanelResponse>? results,
    $core.int? count,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  LedPanelListResponse._() : super();
  factory LedPanelListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedPanelListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedPanelListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pc<LedPanelResponse>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: LedPanelResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedPanelListResponse clone() => LedPanelListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedPanelListResponse copyWith(void Function(LedPanelListResponse) updates) => super.copyWith((message) => updates(message as LedPanelListResponse)) as LedPanelListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelListResponse create() => LedPanelListResponse._();
  LedPanelListResponse createEmptyInstance() => create();
  static $pb.PbList<LedPanelListResponse> createRepeated() => $pb.PbList<LedPanelListResponse>();
  @$core.pragma('dart2js:noInline')
  static LedPanelListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedPanelListResponse>(create);
  static LedPanelListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LedPanelResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class LedPanelPartialUpdateRequest extends $pb.GeneratedMessage {
  factory LedPanelPartialUpdateRequest({
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.String? name,
    $core.int? status,
    $core.double? brightness,
    $core.String? mode,
    $core.Iterable<$core.String>? categories,
    $core.String? uuid,
  }) {
    final $result = create();
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (name != null) {
      $result.name = name;
    }
    if (status != null) {
      $result.status = status;
    }
    if (brightness != null) {
      $result.brightness = brightness;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  LedPanelPartialUpdateRequest._() : super();
  factory LedPanelPartialUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedPanelPartialUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedPanelPartialUpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'brightness', $pb.PbFieldType.OD)
    ..aOS(6, _omitFieldNames ? '' : 'mode')
    ..pPS(7, _omitFieldNames ? '' : 'categories')
    ..aOS(8, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedPanelPartialUpdateRequest clone() => LedPanelPartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedPanelPartialUpdateRequest copyWith(void Function(LedPanelPartialUpdateRequest) updates) => super.copyWith((message) => updates(message as LedPanelPartialUpdateRequest)) as LedPanelPartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelPartialUpdateRequest create() => LedPanelPartialUpdateRequest._();
  LedPanelPartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<LedPanelPartialUpdateRequest> createRepeated() => $pb.PbList<LedPanelPartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static LedPanelPartialUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedPanelPartialUpdateRequest>(create);
  static LedPanelPartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.String> get partialUpdateFields => $_getList(0);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get status => $_getIZ(2);
  @$pb.TagNumber(4)
  set status($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get brightness => $_getN(3);
  @$pb.TagNumber(5)
  set brightness($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasBrightness() => $_has(3);
  @$pb.TagNumber(5)
  void clearBrightness() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get mode => $_getSZ(4);
  @$pb.TagNumber(6)
  set mode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasMode() => $_has(4);
  @$pb.TagNumber(6)
  void clearMode() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get categories => $_getList(5);

  @$pb.TagNumber(8)
  $core.String get uuid => $_getSZ(6);
  @$pb.TagNumber(8)
  set uuid($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasUuid() => $_has(6);
  @$pb.TagNumber(8)
  void clearUuid() => clearField(8);
}

class LedPanelRequest extends $pb.GeneratedMessage {
  factory LedPanelRequest({
    $core.String? name,
    $core.int? status,
    $core.double? brightness,
    $core.String? mode,
    $core.Iterable<$core.String>? categories,
    $core.String? uuid,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (status != null) {
      $result.status = status;
    }
    if (brightness != null) {
      $result.brightness = brightness;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  LedPanelRequest._() : super();
  factory LedPanelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedPanelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedPanelRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'brightness', $pb.PbFieldType.OD)
    ..aOS(5, _omitFieldNames ? '' : 'mode')
    ..pPS(6, _omitFieldNames ? '' : 'categories')
    ..aOS(7, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedPanelRequest clone() => LedPanelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedPanelRequest copyWith(void Function(LedPanelRequest) updates) => super.copyWith((message) => updates(message as LedPanelRequest)) as LedPanelRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelRequest create() => LedPanelRequest._();
  LedPanelRequest createEmptyInstance() => create();
  static $pb.PbList<LedPanelRequest> createRepeated() => $pb.PbList<LedPanelRequest>();
  @$core.pragma('dart2js:noInline')
  static LedPanelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedPanelRequest>(create);
  static LedPanelRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(3)
  set status($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get brightness => $_getN(2);
  @$pb.TagNumber(4)
  set brightness($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasBrightness() => $_has(2);
  @$pb.TagNumber(4)
  void clearBrightness() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get mode => $_getSZ(3);
  @$pb.TagNumber(5)
  set mode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMode() => $_has(3);
  @$pb.TagNumber(5)
  void clearMode() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get categories => $_getList(4);

  @$pb.TagNumber(7)
  $core.String get uuid => $_getSZ(5);
  @$pb.TagNumber(7)
  set uuid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasUuid() => $_has(5);
  @$pb.TagNumber(7)
  void clearUuid() => clearField(7);
}

class LedPanelResponse extends $pb.GeneratedMessage {
  factory LedPanelResponse({
    $core.String? name,
    $core.int? status,
    $core.double? brightness,
    $core.int? polymorphicCtype,
    $core.String? mode,
    $core.Iterable<$core.String>? categories,
    $core.String? uuid,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (status != null) {
      $result.status = status;
    }
    if (brightness != null) {
      $result.brightness = brightness;
    }
    if (polymorphicCtype != null) {
      $result.polymorphicCtype = polymorphicCtype;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  LedPanelResponse._() : super();
  factory LedPanelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedPanelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedPanelResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'brightness', $pb.PbFieldType.OD)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'polymorphicCtype', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'mode')
    ..pPS(7, _omitFieldNames ? '' : 'categories')
    ..aOS(8, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedPanelResponse clone() => LedPanelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedPanelResponse copyWith(void Function(LedPanelResponse) updates) => super.copyWith((message) => updates(message as LedPanelResponse)) as LedPanelResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelResponse create() => LedPanelResponse._();
  LedPanelResponse createEmptyInstance() => create();
  static $pb.PbList<LedPanelResponse> createRepeated() => $pb.PbList<LedPanelResponse>();
  @$core.pragma('dart2js:noInline')
  static LedPanelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedPanelResponse>(create);
  static LedPanelResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(3)
  set status($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get brightness => $_getN(2);
  @$pb.TagNumber(4)
  set brightness($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasBrightness() => $_has(2);
  @$pb.TagNumber(4)
  void clearBrightness() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get polymorphicCtype => $_getIZ(3);
  @$pb.TagNumber(5)
  set polymorphicCtype($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasPolymorphicCtype() => $_has(3);
  @$pb.TagNumber(5)
  void clearPolymorphicCtype() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get mode => $_getSZ(4);
  @$pb.TagNumber(6)
  set mode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasMode() => $_has(4);
  @$pb.TagNumber(6)
  void clearMode() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get categories => $_getList(5);

  @$pb.TagNumber(8)
  $core.String get uuid => $_getSZ(6);
  @$pb.TagNumber(8)
  set uuid($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasUuid() => $_has(6);
  @$pb.TagNumber(8)
  void clearUuid() => clearField(8);
}

class LedPanelRetrieveRequest extends $pb.GeneratedMessage {
  factory LedPanelRetrieveRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  LedPanelRetrieveRequest._() : super();
  factory LedPanelRetrieveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedPanelRetrieveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LedPanelRetrieveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedPanelRetrieveRequest clone() => LedPanelRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedPanelRetrieveRequest copyWith(void Function(LedPanelRetrieveRequest) updates) => super.copyWith((message) => updates(message as LedPanelRetrieveRequest)) as LedPanelRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelRetrieveRequest create() => LedPanelRetrieveRequest._();
  LedPanelRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<LedPanelRetrieveRequest> createRepeated() => $pb.PbList<LedPanelRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static LedPanelRetrieveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedPanelRetrieveRequest>(create);
  static LedPanelRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class ProjectDestroyRequest extends $pb.GeneratedMessage {
  factory ProjectDestroyRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  ProjectDestroyRequest._() : super();
  factory ProjectDestroyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectDestroyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectDestroyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectDestroyRequest clone() => ProjectDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectDestroyRequest copyWith(void Function(ProjectDestroyRequest) updates) => super.copyWith((message) => updates(message as ProjectDestroyRequest)) as ProjectDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectDestroyRequest create() => ProjectDestroyRequest._();
  ProjectDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<ProjectDestroyRequest> createRepeated() => $pb.PbList<ProjectDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static ProjectDestroyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectDestroyRequest>(create);
  static ProjectDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class ProjectListRequest extends $pb.GeneratedMessage {
  factory ProjectListRequest() => create();
  ProjectListRequest._() : super();
  factory ProjectListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectListRequest clone() => ProjectListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectListRequest copyWith(void Function(ProjectListRequest) updates) => super.copyWith((message) => updates(message as ProjectListRequest)) as ProjectListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectListRequest create() => ProjectListRequest._();
  ProjectListRequest createEmptyInstance() => create();
  static $pb.PbList<ProjectListRequest> createRepeated() => $pb.PbList<ProjectListRequest>();
  @$core.pragma('dart2js:noInline')
  static ProjectListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectListRequest>(create);
  static ProjectListRequest? _defaultInstance;
}

class ProjectListResponse extends $pb.GeneratedMessage {
  factory ProjectListResponse({
    $core.Iterable<ProjectResponse>? results,
    $core.int? count,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  ProjectListResponse._() : super();
  factory ProjectListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pc<ProjectResponse>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: ProjectResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectListResponse clone() => ProjectListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectListResponse copyWith(void Function(ProjectListResponse) updates) => super.copyWith((message) => updates(message as ProjectListResponse)) as ProjectListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectListResponse create() => ProjectListResponse._();
  ProjectListResponse createEmptyInstance() => create();
  static $pb.PbList<ProjectListResponse> createRepeated() => $pb.PbList<ProjectListResponse>();
  @$core.pragma('dart2js:noInline')
  static ProjectListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectListResponse>(create);
  static ProjectListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProjectResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class ProjectPartialUpdateRequest extends $pb.GeneratedMessage {
  factory ProjectPartialUpdateRequest({
    $core.Iterable<$core.String>? products,
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.String? pubDate,
    $core.String? name,
    $core.int? owner,
    $core.String? uuid,
  }) {
    final $result = create();
    if (products != null) {
      $result.products.addAll(products);
    }
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (pubDate != null) {
      $result.pubDate = pubDate;
    }
    if (name != null) {
      $result.name = name;
    }
    if (owner != null) {
      $result.owner = owner;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  ProjectPartialUpdateRequest._() : super();
  factory ProjectPartialUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectPartialUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectPartialUpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'products')
    ..pPS(3, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..aOS(4, _omitFieldNames ? '' : 'pubDate')
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'owner', $pb.PbFieldType.O3)
    ..aOS(7, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectPartialUpdateRequest clone() => ProjectPartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectPartialUpdateRequest copyWith(void Function(ProjectPartialUpdateRequest) updates) => super.copyWith((message) => updates(message as ProjectPartialUpdateRequest)) as ProjectPartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectPartialUpdateRequest create() => ProjectPartialUpdateRequest._();
  ProjectPartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<ProjectPartialUpdateRequest> createRepeated() => $pb.PbList<ProjectPartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static ProjectPartialUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectPartialUpdateRequest>(create);
  static ProjectPartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.String> get products => $_getList(0);

  @$pb.TagNumber(3)
  $core.List<$core.String> get partialUpdateFields => $_getList(1);

  @$pb.TagNumber(4)
  $core.String get pubDate => $_getSZ(2);
  @$pb.TagNumber(4)
  set pubDate($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPubDate() => $_has(2);
  @$pb.TagNumber(4)
  void clearPubDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get owner => $_getIZ(4);
  @$pb.TagNumber(6)
  set owner($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasOwner() => $_has(4);
  @$pb.TagNumber(6)
  void clearOwner() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get uuid => $_getSZ(5);
  @$pb.TagNumber(7)
  set uuid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasUuid() => $_has(5);
  @$pb.TagNumber(7)
  void clearUuid() => clearField(7);
}

class ProjectRequest extends $pb.GeneratedMessage {
  factory ProjectRequest({
    $core.Iterable<$core.String>? products,
    $core.String? pubDate,
    $core.String? name,
    $core.int? owner,
    $core.String? uuid,
  }) {
    final $result = create();
    if (products != null) {
      $result.products.addAll(products);
    }
    if (pubDate != null) {
      $result.pubDate = pubDate;
    }
    if (name != null) {
      $result.name = name;
    }
    if (owner != null) {
      $result.owner = owner;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  ProjectRequest._() : super();
  factory ProjectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'products')
    ..aOS(3, _omitFieldNames ? '' : 'pubDate')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'owner', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectRequest clone() => ProjectRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectRequest copyWith(void Function(ProjectRequest) updates) => super.copyWith((message) => updates(message as ProjectRequest)) as ProjectRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectRequest create() => ProjectRequest._();
  ProjectRequest createEmptyInstance() => create();
  static $pb.PbList<ProjectRequest> createRepeated() => $pb.PbList<ProjectRequest>();
  @$core.pragma('dart2js:noInline')
  static ProjectRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectRequest>(create);
  static ProjectRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.String> get products => $_getList(0);

  @$pb.TagNumber(3)
  $core.String get pubDate => $_getSZ(1);
  @$pb.TagNumber(3)
  set pubDate($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPubDate() => $_has(1);
  @$pb.TagNumber(3)
  void clearPubDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get owner => $_getIZ(3);
  @$pb.TagNumber(5)
  set owner($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasOwner() => $_has(3);
  @$pb.TagNumber(5)
  void clearOwner() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get uuid => $_getSZ(4);
  @$pb.TagNumber(6)
  set uuid($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasUuid() => $_has(4);
  @$pb.TagNumber(6)
  void clearUuid() => clearField(6);
}

class ProjectResponse extends $pb.GeneratedMessage {
  factory ProjectResponse({
    $core.Iterable<$core.String>? products,
    $core.String? pubDate,
    $core.String? name,
    $core.int? owner,
    $core.String? uuid,
  }) {
    final $result = create();
    if (products != null) {
      $result.products.addAll(products);
    }
    if (pubDate != null) {
      $result.pubDate = pubDate;
    }
    if (name != null) {
      $result.name = name;
    }
    if (owner != null) {
      $result.owner = owner;
    }
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  ProjectResponse._() : super();
  factory ProjectResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'products')
    ..aOS(3, _omitFieldNames ? '' : 'pubDate')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'owner', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectResponse clone() => ProjectResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectResponse copyWith(void Function(ProjectResponse) updates) => super.copyWith((message) => updates(message as ProjectResponse)) as ProjectResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectResponse create() => ProjectResponse._();
  ProjectResponse createEmptyInstance() => create();
  static $pb.PbList<ProjectResponse> createRepeated() => $pb.PbList<ProjectResponse>();
  @$core.pragma('dart2js:noInline')
  static ProjectResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectResponse>(create);
  static ProjectResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.String> get products => $_getList(0);

  @$pb.TagNumber(3)
  $core.String get pubDate => $_getSZ(1);
  @$pb.TagNumber(3)
  set pubDate($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPubDate() => $_has(1);
  @$pb.TagNumber(3)
  void clearPubDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get owner => $_getIZ(3);
  @$pb.TagNumber(5)
  set owner($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasOwner() => $_has(3);
  @$pb.TagNumber(5)
  void clearOwner() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get uuid => $_getSZ(4);
  @$pb.TagNumber(6)
  set uuid($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasUuid() => $_has(4);
  @$pb.TagNumber(6)
  void clearUuid() => clearField(6);
}

class ProjectRetrieveRequest extends $pb.GeneratedMessage {
  factory ProjectRetrieveRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  ProjectRetrieveRequest._() : super();
  factory ProjectRetrieveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectRetrieveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectRetrieveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'base_app.products_controller'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectRetrieveRequest clone() => ProjectRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectRetrieveRequest copyWith(void Function(ProjectRetrieveRequest) updates) => super.copyWith((message) => updates(message as ProjectRetrieveRequest)) as ProjectRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectRetrieveRequest create() => ProjectRetrieveRequest._();
  ProjectRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<ProjectRetrieveRequest> createRepeated() => $pb.PbList<ProjectRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static ProjectRetrieveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectRetrieveRequest>(create);
  static ProjectRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
