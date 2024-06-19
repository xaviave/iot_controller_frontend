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

enum BaseProductRequest_Product { coffeeMachine, ledPanel, notSet }

/// Polymorphism
/// Manual
class BaseProductRequest extends $pb.GeneratedMessage {
  factory BaseProductRequest({
    CoffeeMachineRequest? coffeeMachine,
    LedPanelRequest? ledPanel,
  }) {
    final $result = create();
    if (coffeeMachine != null) {
      $result.coffeeMachine = coffeeMachine;
    }
    if (ledPanel != null) {
      $result.ledPanel = ledPanel;
    }
    return $result;
  }
  BaseProductRequest._() : super();
  factory BaseProductRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BaseProductRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BaseProductRequest_Product>
      _BaseProductRequest_ProductByTag = {
    2: BaseProductRequest_Product.coffeeMachine,
    3: BaseProductRequest_Product.ledPanel,
    0: BaseProductRequest_Product.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BaseProductRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<CoffeeMachineRequest>(2, _omitFieldNames ? '' : 'CoffeeMachine',
        protoName: 'CoffeeMachine', subBuilder: CoffeeMachineRequest.create)
    ..aOM<LedPanelRequest>(3, _omitFieldNames ? '' : 'LedPanel',
        protoName: 'LedPanel', subBuilder: LedPanelRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BaseProductRequest clone() => BaseProductRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BaseProductRequest copyWith(void Function(BaseProductRequest) updates) =>
      super.copyWith((message) => updates(message as BaseProductRequest))
          as BaseProductRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseProductRequest create() => BaseProductRequest._();
  BaseProductRequest createEmptyInstance() => create();
  static $pb.PbList<BaseProductRequest> createRepeated() =>
      $pb.PbList<BaseProductRequest>();
  @$core.pragma('dart2js:noInline')
  static BaseProductRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BaseProductRequest>(create);
  static BaseProductRequest? _defaultInstance;

  BaseProductRequest_Product whichProduct() =>
      _BaseProductRequest_ProductByTag[$_whichOneof(0)]!;
  void clearProduct() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  CoffeeMachineRequest get coffeeMachine => $_getN(0);
  @$pb.TagNumber(2)
  set coffeeMachine(CoffeeMachineRequest v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCoffeeMachine() => $_has(0);
  @$pb.TagNumber(2)
  void clearCoffeeMachine() => clearField(2);
  @$pb.TagNumber(2)
  CoffeeMachineRequest ensureCoffeeMachine() => $_ensure(0);

  @$pb.TagNumber(3)
  LedPanelRequest get ledPanel => $_getN(1);
  @$pb.TagNumber(3)
  set ledPanel(LedPanelRequest v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLedPanel() => $_has(1);
  @$pb.TagNumber(3)
  void clearLedPanel() => clearField(3);
  @$pb.TagNumber(3)
  LedPanelRequest ensureLedPanel() => $_ensure(1);
}

enum BaseProductResponse_Product { coffeeMachine, ledPanel, notSet }

class BaseProductResponse extends $pb.GeneratedMessage {
  factory BaseProductResponse({
    CoffeeMachineResponse? coffeeMachine,
    LedPanelResponse? ledPanel,
  }) {
    final $result = create();
    if (coffeeMachine != null) {
      $result.coffeeMachine = coffeeMachine;
    }
    if (ledPanel != null) {
      $result.ledPanel = ledPanel;
    }
    return $result;
  }
  BaseProductResponse._() : super();
  factory BaseProductResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BaseProductResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BaseProductResponse_Product>
      _BaseProductResponse_ProductByTag = {
    2: BaseProductResponse_Product.coffeeMachine,
    3: BaseProductResponse_Product.ledPanel,
    0: BaseProductResponse_Product.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BaseProductResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<CoffeeMachineResponse>(2, _omitFieldNames ? '' : 'CoffeeMachine',
        protoName: 'CoffeeMachine', subBuilder: CoffeeMachineResponse.create)
    ..aOM<LedPanelResponse>(3, _omitFieldNames ? '' : 'LedPanel',
        protoName: 'LedPanel', subBuilder: LedPanelResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BaseProductResponse clone() => BaseProductResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BaseProductResponse copyWith(void Function(BaseProductResponse) updates) =>
      super.copyWith((message) => updates(message as BaseProductResponse))
          as BaseProductResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseProductResponse create() => BaseProductResponse._();
  BaseProductResponse createEmptyInstance() => create();
  static $pb.PbList<BaseProductResponse> createRepeated() =>
      $pb.PbList<BaseProductResponse>();
  @$core.pragma('dart2js:noInline')
  static BaseProductResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BaseProductResponse>(create);
  static BaseProductResponse? _defaultInstance;

  BaseProductResponse_Product whichProduct() =>
      _BaseProductResponse_ProductByTag[$_whichOneof(0)]!;
  void clearProduct() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  CoffeeMachineResponse get coffeeMachine => $_getN(0);
  @$pb.TagNumber(2)
  set coffeeMachine(CoffeeMachineResponse v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCoffeeMachine() => $_has(0);
  @$pb.TagNumber(2)
  void clearCoffeeMachine() => clearField(2);
  @$pb.TagNumber(2)
  CoffeeMachineResponse ensureCoffeeMachine() => $_ensure(0);

  @$pb.TagNumber(3)
  LedPanelResponse get ledPanel => $_getN(1);
  @$pb.TagNumber(3)
  set ledPanel(LedPanelResponse v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLedPanel() => $_has(1);
  @$pb.TagNumber(3)
  void clearLedPanel() => clearField(3);
  @$pb.TagNumber(3)
  LedPanelResponse ensureLedPanel() => $_ensure(1);
}

enum LedModeRequest_Mode {
  imageMode,
  videoMode,
  colorMode,
  patternMode,
  notSet
}

class LedModeRequest extends $pb.GeneratedMessage {
  factory LedModeRequest({
    ImageModeRequest? imageMode,
    VideoModeRequest? videoMode,
    ColorModeRequest? colorMode,
    PatternModeRequest? patternMode,
  }) {
    final $result = create();
    if (imageMode != null) {
      $result.imageMode = imageMode;
    }
    if (videoMode != null) {
      $result.videoMode = videoMode;
    }
    if (colorMode != null) {
      $result.colorMode = colorMode;
    }
    if (patternMode != null) {
      $result.patternMode = patternMode;
    }
    return $result;
  }
  LedModeRequest._() : super();
  factory LedModeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LedModeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, LedModeRequest_Mode>
      _LedModeRequest_ModeByTag = {
    2: LedModeRequest_Mode.imageMode,
    3: LedModeRequest_Mode.videoMode,
    4: LedModeRequest_Mode.colorMode,
    5: LedModeRequest_Mode.patternMode,
    0: LedModeRequest_Mode.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LedModeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..aOM<ImageModeRequest>(2, _omitFieldNames ? '' : 'ImageMode',
        protoName: 'ImageMode', subBuilder: ImageModeRequest.create)
    ..aOM<VideoModeRequest>(3, _omitFieldNames ? '' : 'VideoMode',
        protoName: 'VideoMode', subBuilder: VideoModeRequest.create)
    ..aOM<ColorModeRequest>(4, _omitFieldNames ? '' : 'ColorMode',
        protoName: 'ColorMode', subBuilder: ColorModeRequest.create)
    ..aOM<PatternModeRequest>(5, _omitFieldNames ? '' : 'PatternMode',
        protoName: 'PatternMode', subBuilder: PatternModeRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LedModeRequest clone() => LedModeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LedModeRequest copyWith(void Function(LedModeRequest) updates) =>
      super.copyWith((message) => updates(message as LedModeRequest))
          as LedModeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedModeRequest create() => LedModeRequest._();
  LedModeRequest createEmptyInstance() => create();
  static $pb.PbList<LedModeRequest> createRepeated() =>
      $pb.PbList<LedModeRequest>();
  @$core.pragma('dart2js:noInline')
  static LedModeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LedModeRequest>(create);
  static LedModeRequest? _defaultInstance;

  LedModeRequest_Mode whichMode() =>
      _LedModeRequest_ModeByTag[$_whichOneof(0)]!;
  void clearMode() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  ImageModeRequest get imageMode => $_getN(0);
  @$pb.TagNumber(2)
  set imageMode(ImageModeRequest v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasImageMode() => $_has(0);
  @$pb.TagNumber(2)
  void clearImageMode() => clearField(2);
  @$pb.TagNumber(2)
  ImageModeRequest ensureImageMode() => $_ensure(0);

  @$pb.TagNumber(3)
  VideoModeRequest get videoMode => $_getN(1);
  @$pb.TagNumber(3)
  set videoMode(VideoModeRequest v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVideoMode() => $_has(1);
  @$pb.TagNumber(3)
  void clearVideoMode() => clearField(3);
  @$pb.TagNumber(3)
  VideoModeRequest ensureVideoMode() => $_ensure(1);

  @$pb.TagNumber(4)
  ColorModeRequest get colorMode => $_getN(2);
  @$pb.TagNumber(4)
  set colorMode(ColorModeRequest v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasColorMode() => $_has(2);
  @$pb.TagNumber(4)
  void clearColorMode() => clearField(4);
  @$pb.TagNumber(4)
  ColorModeRequest ensureColorMode() => $_ensure(2);

  @$pb.TagNumber(5)
  PatternModeRequest get patternMode => $_getN(3);
  @$pb.TagNumber(5)
  set patternMode(PatternModeRequest v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPatternMode() => $_has(3);
  @$pb.TagNumber(5)
  void clearPatternMode() => clearField(5);
  @$pb.TagNumber(5)
  PatternModeRequest ensurePatternMode() => $_ensure(3);
}

enum LedModeResponse_Mode {
  imageMode,
  videoMode,
  colorMode,
  patternMode,
  notSet
}

class LedModeResponse extends $pb.GeneratedMessage {
  factory LedModeResponse({
    ImageModeResponse? imageMode,
    VideoModeResponse? videoMode,
    ColorModeResponse? colorMode,
    PatternModeResponse? patternMode,
  }) {
    final $result = create();
    if (imageMode != null) {
      $result.imageMode = imageMode;
    }
    if (videoMode != null) {
      $result.videoMode = videoMode;
    }
    if (colorMode != null) {
      $result.colorMode = colorMode;
    }
    if (patternMode != null) {
      $result.patternMode = patternMode;
    }
    return $result;
  }
  LedModeResponse._() : super();
  factory LedModeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LedModeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, LedModeResponse_Mode>
      _LedModeResponse_ModeByTag = {
    2: LedModeResponse_Mode.imageMode,
    3: LedModeResponse_Mode.videoMode,
    4: LedModeResponse_Mode.colorMode,
    5: LedModeResponse_Mode.patternMode,
    0: LedModeResponse_Mode.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LedModeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..aOM<ImageModeResponse>(2, _omitFieldNames ? '' : 'ImageMode',
        protoName: 'ImageMode', subBuilder: ImageModeResponse.create)
    ..aOM<VideoModeResponse>(3, _omitFieldNames ? '' : 'VideoMode',
        protoName: 'VideoMode', subBuilder: VideoModeResponse.create)
    ..aOM<ColorModeResponse>(4, _omitFieldNames ? '' : 'ColorMode',
        protoName: 'ColorMode', subBuilder: ColorModeResponse.create)
    ..aOM<PatternModeResponse>(5, _omitFieldNames ? '' : 'PatternMode',
        protoName: 'PatternMode', subBuilder: PatternModeResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LedModeResponse clone() => LedModeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LedModeResponse copyWith(void Function(LedModeResponse) updates) =>
      super.copyWith((message) => updates(message as LedModeResponse))
          as LedModeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedModeResponse create() => LedModeResponse._();
  LedModeResponse createEmptyInstance() => create();
  static $pb.PbList<LedModeResponse> createRepeated() =>
      $pb.PbList<LedModeResponse>();
  @$core.pragma('dart2js:noInline')
  static LedModeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LedModeResponse>(create);
  static LedModeResponse? _defaultInstance;

  LedModeResponse_Mode whichMode() =>
      _LedModeResponse_ModeByTag[$_whichOneof(0)]!;
  void clearMode() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  ImageModeResponse get imageMode => $_getN(0);
  @$pb.TagNumber(2)
  set imageMode(ImageModeResponse v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasImageMode() => $_has(0);
  @$pb.TagNumber(2)
  void clearImageMode() => clearField(2);
  @$pb.TagNumber(2)
  ImageModeResponse ensureImageMode() => $_ensure(0);

  @$pb.TagNumber(3)
  VideoModeResponse get videoMode => $_getN(1);
  @$pb.TagNumber(3)
  set videoMode(VideoModeResponse v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVideoMode() => $_has(1);
  @$pb.TagNumber(3)
  void clearVideoMode() => clearField(3);
  @$pb.TagNumber(3)
  VideoModeResponse ensureVideoMode() => $_ensure(1);

  @$pb.TagNumber(4)
  ColorModeResponse get colorMode => $_getN(2);
  @$pb.TagNumber(4)
  set colorMode(ColorModeResponse v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasColorMode() => $_has(2);
  @$pb.TagNumber(4)
  void clearColorMode() => clearField(4);
  @$pb.TagNumber(4)
  ColorModeResponse ensureColorMode() => $_ensure(2);

  @$pb.TagNumber(5)
  PatternModeResponse get patternMode => $_getN(3);
  @$pb.TagNumber(5)
  set patternMode(PatternModeResponse v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPatternMode() => $_has(3);
  @$pb.TagNumber(5)
  void clearPatternMode() => clearField(5);
  @$pb.TagNumber(5)
  PatternModeResponse ensurePatternMode() => $_ensure(3);
}

class CategoryDestroyRequest extends $pb.GeneratedMessage {
  factory CategoryDestroyRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CategoryDestroyRequest._() : super();
  factory CategoryDestroyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CategoryDestroyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CategoryDestroyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CategoryDestroyRequest clone() =>
      CategoryDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CategoryDestroyRequest copyWith(
          void Function(CategoryDestroyRequest) updates) =>
      super.copyWith((message) => updates(message as CategoryDestroyRequest))
          as CategoryDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryDestroyRequest create() => CategoryDestroyRequest._();
  CategoryDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryDestroyRequest> createRepeated() =>
      $pb.PbList<CategoryDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryDestroyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CategoryDestroyRequest>(create);
  static CategoryDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CategoryListRequest extends $pb.GeneratedMessage {
  factory CategoryListRequest() => create();
  CategoryListRequest._() : super();
  factory CategoryListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CategoryListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CategoryListRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CategoryListRequest clone() => CategoryListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CategoryListRequest copyWith(void Function(CategoryListRequest) updates) =>
      super.copyWith((message) => updates(message as CategoryListRequest))
          as CategoryListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryListRequest create() => CategoryListRequest._();
  CategoryListRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryListRequest> createRepeated() =>
      $pb.PbList<CategoryListRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CategoryListRequest>(create);
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
  factory CategoryListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CategoryListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CategoryListResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..pc<CategoryResponse>(
        1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: CategoryResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CategoryListResponse clone() =>
      CategoryListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CategoryListResponse copyWith(void Function(CategoryListResponse) updates) =>
      super.copyWith((message) => updates(message as CategoryListResponse))
          as CategoryListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryListResponse create() => CategoryListResponse._();
  CategoryListResponse createEmptyInstance() => create();
  static $pb.PbList<CategoryListResponse> createRepeated() =>
      $pb.PbList<CategoryListResponse>();
  @$core.pragma('dart2js:noInline')
  static CategoryListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CategoryListResponse>(create);
  static CategoryListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CategoryResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class CategoryPartialUpdateRequest extends $pb.GeneratedMessage {
  factory CategoryPartialUpdateRequest({
    $core.int? id,
    $core.String? name,
    $core.Iterable<$core.String>? partialUpdateFields,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    return $result;
  }
  CategoryPartialUpdateRequest._() : super();
  factory CategoryPartialUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CategoryPartialUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CategoryPartialUpdateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CategoryPartialUpdateRequest clone() =>
      CategoryPartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CategoryPartialUpdateRequest copyWith(
          void Function(CategoryPartialUpdateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CategoryPartialUpdateRequest))
          as CategoryPartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryPartialUpdateRequest create() =>
      CategoryPartialUpdateRequest._();
  CategoryPartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryPartialUpdateRequest> createRepeated() =>
      $pb.PbList<CategoryPartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryPartialUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CategoryPartialUpdateRequest>(create);
  static CategoryPartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get partialUpdateFields => $_getList(2);
}

class CategoryRequest extends $pb.GeneratedMessage {
  factory CategoryRequest({
    $core.int? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CategoryRequest._() : super();
  factory CategoryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CategoryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CategoryRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CategoryRequest clone() => CategoryRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CategoryRequest copyWith(void Function(CategoryRequest) updates) =>
      super.copyWith((message) => updates(message as CategoryRequest))
          as CategoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryRequest create() => CategoryRequest._();
  CategoryRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryRequest> createRepeated() =>
      $pb.PbList<CategoryRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CategoryRequest>(create);
  static CategoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class CategoryResponse extends $pb.GeneratedMessage {
  factory CategoryResponse({
    $core.int? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CategoryResponse._() : super();
  factory CategoryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CategoryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CategoryResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CategoryResponse clone() => CategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CategoryResponse copyWith(void Function(CategoryResponse) updates) =>
      super.copyWith((message) => updates(message as CategoryResponse))
          as CategoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryResponse create() => CategoryResponse._();
  CategoryResponse createEmptyInstance() => create();
  static $pb.PbList<CategoryResponse> createRepeated() =>
      $pb.PbList<CategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static CategoryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CategoryResponse>(create);
  static CategoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class CategoryRetrieveRequest extends $pb.GeneratedMessage {
  factory CategoryRetrieveRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CategoryRetrieveRequest._() : super();
  factory CategoryRetrieveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CategoryRetrieveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CategoryRetrieveRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CategoryRetrieveRequest clone() =>
      CategoryRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CategoryRetrieveRequest copyWith(
          void Function(CategoryRetrieveRequest) updates) =>
      super.copyWith((message) => updates(message as CategoryRetrieveRequest))
          as CategoryRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryRetrieveRequest create() => CategoryRetrieveRequest._();
  CategoryRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryRetrieveRequest> createRepeated() =>
      $pb.PbList<CategoryRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryRetrieveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CategoryRetrieveRequest>(create);
  static CategoryRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CoffeeMachineDestroyRequest extends $pb.GeneratedMessage {
  factory CoffeeMachineDestroyRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CoffeeMachineDestroyRequest._() : super();
  factory CoffeeMachineDestroyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CoffeeMachineDestroyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CoffeeMachineDestroyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CoffeeMachineDestroyRequest clone() =>
      CoffeeMachineDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CoffeeMachineDestroyRequest copyWith(
          void Function(CoffeeMachineDestroyRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CoffeeMachineDestroyRequest))
          as CoffeeMachineDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineDestroyRequest create() =>
      CoffeeMachineDestroyRequest._();
  CoffeeMachineDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineDestroyRequest> createRepeated() =>
      $pb.PbList<CoffeeMachineDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineDestroyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CoffeeMachineDestroyRequest>(create);
  static CoffeeMachineDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CoffeeMachineListRequest extends $pb.GeneratedMessage {
  factory CoffeeMachineListRequest() => create();
  CoffeeMachineListRequest._() : super();
  factory CoffeeMachineListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CoffeeMachineListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CoffeeMachineListRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CoffeeMachineListRequest clone() =>
      CoffeeMachineListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CoffeeMachineListRequest copyWith(
          void Function(CoffeeMachineListRequest) updates) =>
      super.copyWith((message) => updates(message as CoffeeMachineListRequest))
          as CoffeeMachineListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineListRequest create() => CoffeeMachineListRequest._();
  CoffeeMachineListRequest createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineListRequest> createRepeated() =>
      $pb.PbList<CoffeeMachineListRequest>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CoffeeMachineListRequest>(create);
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
  factory CoffeeMachineListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CoffeeMachineListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CoffeeMachineListResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..pc<CoffeeMachineResponse>(
        1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: CoffeeMachineResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CoffeeMachineListResponse clone() =>
      CoffeeMachineListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CoffeeMachineListResponse copyWith(
          void Function(CoffeeMachineListResponse) updates) =>
      super.copyWith((message) => updates(message as CoffeeMachineListResponse))
          as CoffeeMachineListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineListResponse create() => CoffeeMachineListResponse._();
  CoffeeMachineListResponse createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineListResponse> createRepeated() =>
      $pb.PbList<CoffeeMachineListResponse>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CoffeeMachineListResponse>(create);
  static CoffeeMachineListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CoffeeMachineResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class CoffeeMachinePartialUpdateRequest extends $pb.GeneratedMessage {
  factory CoffeeMachinePartialUpdateRequest({
    $core.int? id,
    $core.String? name,
    $core.Iterable<CategoryRequest>? categories,
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.int? status,
    $core.double? heat,
    $core.int? waterLevel,
    $core.int? usedWaterLevel,
    $core.int? coffeeLevel,
    $core.bool? filterPosition,
    $core.int? modeValue,
    $core.String? ipAddress,
    $core.int? ipPort,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
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
    if (ipAddress != null) {
      $result.ipAddress = ipAddress;
    }
    if (ipPort != null) {
      $result.ipPort = ipPort;
    }
    return $result;
  }
  CoffeeMachinePartialUpdateRequest._() : super();
  factory CoffeeMachinePartialUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CoffeeMachinePartialUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CoffeeMachinePartialUpdateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<CategoryRequest>(
        3, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.PM,
        subBuilder: CategoryRequest.create)
    ..pPS(4, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'heat', $pb.PbFieldType.OF)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'waterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(
        8, _omitFieldNames ? '' : 'usedWaterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'coffeeLevel', $pb.PbFieldType.O3)
    ..aOB(10, _omitFieldNames ? '' : 'filterPosition')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'modeValue', $pb.PbFieldType.O3)
    ..aOS(12, _omitFieldNames ? '' : 'ipAddress')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'ipPort', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CoffeeMachinePartialUpdateRequest clone() =>
      CoffeeMachinePartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CoffeeMachinePartialUpdateRequest copyWith(
          void Function(CoffeeMachinePartialUpdateRequest) updates) =>
      super.copyWith((message) =>
              updates(message as CoffeeMachinePartialUpdateRequest))
          as CoffeeMachinePartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachinePartialUpdateRequest create() =>
      CoffeeMachinePartialUpdateRequest._();
  CoffeeMachinePartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachinePartialUpdateRequest> createRepeated() =>
      $pb.PbList<CoffeeMachinePartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachinePartialUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CoffeeMachinePartialUpdateRequest>(
          create);
  static CoffeeMachinePartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<CategoryRequest> get categories => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get partialUpdateFields => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get status => $_getIZ(4);
  @$pb.TagNumber(5)
  set status($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get heat => $_getN(5);
  @$pb.TagNumber(6)
  set heat($core.double v) {
    $_setFloat(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasHeat() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeat() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get waterLevel => $_getIZ(6);
  @$pb.TagNumber(7)
  set waterLevel($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasWaterLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearWaterLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get usedWaterLevel => $_getIZ(7);
  @$pb.TagNumber(8)
  set usedWaterLevel($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasUsedWaterLevel() => $_has(7);
  @$pb.TagNumber(8)
  void clearUsedWaterLevel() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get coffeeLevel => $_getIZ(8);
  @$pb.TagNumber(9)
  set coffeeLevel($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasCoffeeLevel() => $_has(8);
  @$pb.TagNumber(9)
  void clearCoffeeLevel() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get filterPosition => $_getBF(9);
  @$pb.TagNumber(10)
  set filterPosition($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasFilterPosition() => $_has(9);
  @$pb.TagNumber(10)
  void clearFilterPosition() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get modeValue => $_getIZ(10);
  @$pb.TagNumber(11)
  set modeValue($core.int v) {
    $_setSignedInt32(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasModeValue() => $_has(10);
  @$pb.TagNumber(11)
  void clearModeValue() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get ipAddress => $_getSZ(11);
  @$pb.TagNumber(12)
  set ipAddress($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasIpAddress() => $_has(11);
  @$pb.TagNumber(12)
  void clearIpAddress() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get ipPort => $_getIZ(12);
  @$pb.TagNumber(13)
  set ipPort($core.int v) {
    $_setSignedInt32(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasIpPort() => $_has(12);
  @$pb.TagNumber(13)
  void clearIpPort() => clearField(13);
}

class CoffeeMachineRequest extends $pb.GeneratedMessage {
  factory CoffeeMachineRequest({
    $core.int? id,
    $core.String? name,
    $core.Iterable<CategoryRequest>? categories,
    $core.int? status,
    $core.double? heat,
    $core.int? waterLevel,
    $core.int? usedWaterLevel,
    $core.int? coffeeLevel,
    $core.bool? filterPosition,
    $core.int? modeValue,
    $core.String? ipAddress,
    $core.int? ipPort,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
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
    if (ipAddress != null) {
      $result.ipAddress = ipAddress;
    }
    if (ipPort != null) {
      $result.ipPort = ipPort;
    }
    return $result;
  }
  CoffeeMachineRequest._() : super();
  factory CoffeeMachineRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CoffeeMachineRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CoffeeMachineRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<CategoryRequest>(
        3, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.PM,
        subBuilder: CategoryRequest.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'heat', $pb.PbFieldType.OF)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'waterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'usedWaterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'coffeeLevel', $pb.PbFieldType.O3)
    ..aOB(9, _omitFieldNames ? '' : 'filterPosition')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'modeValue', $pb.PbFieldType.O3)
    ..aOS(11, _omitFieldNames ? '' : 'ipAddress')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'ipPort', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CoffeeMachineRequest clone() =>
      CoffeeMachineRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CoffeeMachineRequest copyWith(void Function(CoffeeMachineRequest) updates) =>
      super.copyWith((message) => updates(message as CoffeeMachineRequest))
          as CoffeeMachineRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineRequest create() => CoffeeMachineRequest._();
  CoffeeMachineRequest createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineRequest> createRepeated() =>
      $pb.PbList<CoffeeMachineRequest>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CoffeeMachineRequest>(create);
  static CoffeeMachineRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<CategoryRequest> get categories => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get status => $_getIZ(3);
  @$pb.TagNumber(4)
  set status($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get heat => $_getN(4);
  @$pb.TagNumber(5)
  set heat($core.double v) {
    $_setFloat(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasHeat() => $_has(4);
  @$pb.TagNumber(5)
  void clearHeat() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get waterLevel => $_getIZ(5);
  @$pb.TagNumber(6)
  set waterLevel($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasWaterLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearWaterLevel() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get usedWaterLevel => $_getIZ(6);
  @$pb.TagNumber(7)
  set usedWaterLevel($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasUsedWaterLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearUsedWaterLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get coffeeLevel => $_getIZ(7);
  @$pb.TagNumber(8)
  set coffeeLevel($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasCoffeeLevel() => $_has(7);
  @$pb.TagNumber(8)
  void clearCoffeeLevel() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get filterPosition => $_getBF(8);
  @$pb.TagNumber(9)
  set filterPosition($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasFilterPosition() => $_has(8);
  @$pb.TagNumber(9)
  void clearFilterPosition() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get modeValue => $_getIZ(9);
  @$pb.TagNumber(10)
  set modeValue($core.int v) {
    $_setSignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasModeValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearModeValue() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get ipAddress => $_getSZ(10);
  @$pb.TagNumber(11)
  set ipAddress($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasIpAddress() => $_has(10);
  @$pb.TagNumber(11)
  void clearIpAddress() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get ipPort => $_getIZ(11);
  @$pb.TagNumber(12)
  set ipPort($core.int v) {
    $_setSignedInt32(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasIpPort() => $_has(11);
  @$pb.TagNumber(12)
  void clearIpPort() => clearField(12);
}

class CoffeeMachineResponse extends $pb.GeneratedMessage {
  factory CoffeeMachineResponse({
    $core.int? id,
    $core.String? name,
    $core.Iterable<CategoryResponse>? categories,
    $core.int? status,
    $core.double? heat,
    $core.int? waterLevel,
    $core.int? usedWaterLevel,
    $core.int? coffeeLevel,
    $core.bool? filterPosition,
    $core.int? modeValue,
    $core.int? polymorphicCtype,
    $core.String? ipAddress,
    $core.int? ipPort,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
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
    if (ipAddress != null) {
      $result.ipAddress = ipAddress;
    }
    if (ipPort != null) {
      $result.ipPort = ipPort;
    }
    return $result;
  }
  CoffeeMachineResponse._() : super();
  factory CoffeeMachineResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CoffeeMachineResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CoffeeMachineResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<CategoryResponse>(
        3, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.PM,
        subBuilder: CategoryResponse.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'heat', $pb.PbFieldType.OF)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'waterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'usedWaterLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'coffeeLevel', $pb.PbFieldType.O3)
    ..aOB(9, _omitFieldNames ? '' : 'filterPosition')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'modeValue', $pb.PbFieldType.O3)
    ..a<$core.int>(
        11, _omitFieldNames ? '' : 'polymorphicCtype', $pb.PbFieldType.O3)
    ..aOS(12, _omitFieldNames ? '' : 'ipAddress')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'ipPort', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CoffeeMachineResponse clone() =>
      CoffeeMachineResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CoffeeMachineResponse copyWith(
          void Function(CoffeeMachineResponse) updates) =>
      super.copyWith((message) => updates(message as CoffeeMachineResponse))
          as CoffeeMachineResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineResponse create() => CoffeeMachineResponse._();
  CoffeeMachineResponse createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineResponse> createRepeated() =>
      $pb.PbList<CoffeeMachineResponse>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CoffeeMachineResponse>(create);
  static CoffeeMachineResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<CategoryResponse> get categories => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get status => $_getIZ(3);
  @$pb.TagNumber(4)
  set status($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get heat => $_getN(4);
  @$pb.TagNumber(5)
  set heat($core.double v) {
    $_setFloat(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasHeat() => $_has(4);
  @$pb.TagNumber(5)
  void clearHeat() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get waterLevel => $_getIZ(5);
  @$pb.TagNumber(6)
  set waterLevel($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasWaterLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearWaterLevel() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get usedWaterLevel => $_getIZ(6);
  @$pb.TagNumber(7)
  set usedWaterLevel($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasUsedWaterLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearUsedWaterLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get coffeeLevel => $_getIZ(7);
  @$pb.TagNumber(8)
  set coffeeLevel($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasCoffeeLevel() => $_has(7);
  @$pb.TagNumber(8)
  void clearCoffeeLevel() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get filterPosition => $_getBF(8);
  @$pb.TagNumber(9)
  set filterPosition($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasFilterPosition() => $_has(8);
  @$pb.TagNumber(9)
  void clearFilterPosition() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get modeValue => $_getIZ(9);
  @$pb.TagNumber(10)
  set modeValue($core.int v) {
    $_setSignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasModeValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearModeValue() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get polymorphicCtype => $_getIZ(10);
  @$pb.TagNumber(11)
  set polymorphicCtype($core.int v) {
    $_setSignedInt32(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasPolymorphicCtype() => $_has(10);
  @$pb.TagNumber(11)
  void clearPolymorphicCtype() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get ipAddress => $_getSZ(11);
  @$pb.TagNumber(12)
  set ipAddress($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasIpAddress() => $_has(11);
  @$pb.TagNumber(12)
  void clearIpAddress() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get ipPort => $_getIZ(12);
  @$pb.TagNumber(13)
  set ipPort($core.int v) {
    $_setSignedInt32(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasIpPort() => $_has(12);
  @$pb.TagNumber(13)
  void clearIpPort() => clearField(13);
}

class CoffeeMachineRetrieveRequest extends $pb.GeneratedMessage {
  factory CoffeeMachineRetrieveRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CoffeeMachineRetrieveRequest._() : super();
  factory CoffeeMachineRetrieveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CoffeeMachineRetrieveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CoffeeMachineRetrieveRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CoffeeMachineRetrieveRequest clone() =>
      CoffeeMachineRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CoffeeMachineRetrieveRequest copyWith(
          void Function(CoffeeMachineRetrieveRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CoffeeMachineRetrieveRequest))
          as CoffeeMachineRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoffeeMachineRetrieveRequest create() =>
      CoffeeMachineRetrieveRequest._();
  CoffeeMachineRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<CoffeeMachineRetrieveRequest> createRepeated() =>
      $pb.PbList<CoffeeMachineRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static CoffeeMachineRetrieveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CoffeeMachineRetrieveRequest>(create);
  static CoffeeMachineRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ColorModeDestroyRequest extends $pb.GeneratedMessage {
  factory ColorModeDestroyRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ColorModeDestroyRequest._() : super();
  factory ColorModeDestroyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ColorModeDestroyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColorModeDestroyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ColorModeDestroyRequest clone() =>
      ColorModeDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ColorModeDestroyRequest copyWith(
          void Function(ColorModeDestroyRequest) updates) =>
      super.copyWith((message) => updates(message as ColorModeDestroyRequest))
          as ColorModeDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorModeDestroyRequest create() => ColorModeDestroyRequest._();
  ColorModeDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<ColorModeDestroyRequest> createRepeated() =>
      $pb.PbList<ColorModeDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static ColorModeDestroyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColorModeDestroyRequest>(create);
  static ColorModeDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ColorModeListRequest extends $pb.GeneratedMessage {
  factory ColorModeListRequest() => create();
  ColorModeListRequest._() : super();
  factory ColorModeListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ColorModeListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColorModeListRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ColorModeListRequest clone() =>
      ColorModeListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ColorModeListRequest copyWith(void Function(ColorModeListRequest) updates) =>
      super.copyWith((message) => updates(message as ColorModeListRequest))
          as ColorModeListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorModeListRequest create() => ColorModeListRequest._();
  ColorModeListRequest createEmptyInstance() => create();
  static $pb.PbList<ColorModeListRequest> createRepeated() =>
      $pb.PbList<ColorModeListRequest>();
  @$core.pragma('dart2js:noInline')
  static ColorModeListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColorModeListRequest>(create);
  static ColorModeListRequest? _defaultInstance;
}

class ColorModeListResponse extends $pb.GeneratedMessage {
  factory ColorModeListResponse({
    $core.Iterable<ColorModeResponse>? results,
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
  ColorModeListResponse._() : super();
  factory ColorModeListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ColorModeListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColorModeListResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..pc<ColorModeResponse>(
        1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: ColorModeResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ColorModeListResponse clone() =>
      ColorModeListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ColorModeListResponse copyWith(
          void Function(ColorModeListResponse) updates) =>
      super.copyWith((message) => updates(message as ColorModeListResponse))
          as ColorModeListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorModeListResponse create() => ColorModeListResponse._();
  ColorModeListResponse createEmptyInstance() => create();
  static $pb.PbList<ColorModeListResponse> createRepeated() =>
      $pb.PbList<ColorModeListResponse>();
  @$core.pragma('dart2js:noInline')
  static ColorModeListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColorModeListResponse>(create);
  static ColorModeListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ColorModeResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class ColorModePartialUpdateRequest extends $pb.GeneratedMessage {
  factory ColorModePartialUpdateRequest({
    $core.int? id,
    $core.String? name,
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.String? color,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (color != null) {
      $result.color = color;
    }
    return $result;
  }
  ColorModePartialUpdateRequest._() : super();
  factory ColorModePartialUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ColorModePartialUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColorModePartialUpdateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..aOS(4, _omitFieldNames ? '' : 'color')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ColorModePartialUpdateRequest clone() =>
      ColorModePartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ColorModePartialUpdateRequest copyWith(
          void Function(ColorModePartialUpdateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ColorModePartialUpdateRequest))
          as ColorModePartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorModePartialUpdateRequest create() =>
      ColorModePartialUpdateRequest._();
  ColorModePartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<ColorModePartialUpdateRequest> createRepeated() =>
      $pb.PbList<ColorModePartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static ColorModePartialUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColorModePartialUpdateRequest>(create);
  static ColorModePartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get partialUpdateFields => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get color => $_getSZ(3);
  @$pb.TagNumber(4)
  set color($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearColor() => clearField(4);
}

class ColorModeRequest extends $pb.GeneratedMessage {
  factory ColorModeRequest({
    $core.int? id,
    $core.String? name,
    $core.String? color,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (color != null) {
      $result.color = color;
    }
    return $result;
  }
  ColorModeRequest._() : super();
  factory ColorModeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ColorModeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColorModeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'color')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ColorModeRequest clone() => ColorModeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ColorModeRequest copyWith(void Function(ColorModeRequest) updates) =>
      super.copyWith((message) => updates(message as ColorModeRequest))
          as ColorModeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorModeRequest create() => ColorModeRequest._();
  ColorModeRequest createEmptyInstance() => create();
  static $pb.PbList<ColorModeRequest> createRepeated() =>
      $pb.PbList<ColorModeRequest>();
  @$core.pragma('dart2js:noInline')
  static ColorModeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColorModeRequest>(create);
  static ColorModeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => clearField(3);
}

class ColorModeResponse extends $pb.GeneratedMessage {
  factory ColorModeResponse({
    $core.int? id,
    $core.String? name,
    $core.String? color,
    $core.int? polymorphicCtype,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (color != null) {
      $result.color = color;
    }
    if (polymorphicCtype != null) {
      $result.polymorphicCtype = polymorphicCtype;
    }
    return $result;
  }
  ColorModeResponse._() : super();
  factory ColorModeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ColorModeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColorModeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'color')
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'polymorphicCtype', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ColorModeResponse clone() => ColorModeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ColorModeResponse copyWith(void Function(ColorModeResponse) updates) =>
      super.copyWith((message) => updates(message as ColorModeResponse))
          as ColorModeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorModeResponse create() => ColorModeResponse._();
  ColorModeResponse createEmptyInstance() => create();
  static $pb.PbList<ColorModeResponse> createRepeated() =>
      $pb.PbList<ColorModeResponse>();
  @$core.pragma('dart2js:noInline')
  static ColorModeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColorModeResponse>(create);
  static ColorModeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get polymorphicCtype => $_getIZ(3);
  @$pb.TagNumber(4)
  set polymorphicCtype($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPolymorphicCtype() => $_has(3);
  @$pb.TagNumber(4)
  void clearPolymorphicCtype() => clearField(4);
}

class ColorModeRetrieveRequest extends $pb.GeneratedMessage {
  factory ColorModeRetrieveRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ColorModeRetrieveRequest._() : super();
  factory ColorModeRetrieveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ColorModeRetrieveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColorModeRetrieveRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ColorModeRetrieveRequest clone() =>
      ColorModeRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ColorModeRetrieveRequest copyWith(
          void Function(ColorModeRetrieveRequest) updates) =>
      super.copyWith((message) => updates(message as ColorModeRetrieveRequest))
          as ColorModeRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorModeRetrieveRequest create() => ColorModeRetrieveRequest._();
  ColorModeRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<ColorModeRetrieveRequest> createRepeated() =>
      $pb.PbList<ColorModeRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static ColorModeRetrieveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColorModeRetrieveRequest>(create);
  static ColorModeRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ImageModeDestroyRequest extends $pb.GeneratedMessage {
  factory ImageModeDestroyRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ImageModeDestroyRequest._() : super();
  factory ImageModeDestroyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ImageModeDestroyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImageModeDestroyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ImageModeDestroyRequest clone() =>
      ImageModeDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ImageModeDestroyRequest copyWith(
          void Function(ImageModeDestroyRequest) updates) =>
      super.copyWith((message) => updates(message as ImageModeDestroyRequest))
          as ImageModeDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageModeDestroyRequest create() => ImageModeDestroyRequest._();
  ImageModeDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<ImageModeDestroyRequest> createRepeated() =>
      $pb.PbList<ImageModeDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static ImageModeDestroyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImageModeDestroyRequest>(create);
  static ImageModeDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ImageModeListRequest extends $pb.GeneratedMessage {
  factory ImageModeListRequest() => create();
  ImageModeListRequest._() : super();
  factory ImageModeListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ImageModeListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImageModeListRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ImageModeListRequest clone() =>
      ImageModeListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ImageModeListRequest copyWith(void Function(ImageModeListRequest) updates) =>
      super.copyWith((message) => updates(message as ImageModeListRequest))
          as ImageModeListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageModeListRequest create() => ImageModeListRequest._();
  ImageModeListRequest createEmptyInstance() => create();
  static $pb.PbList<ImageModeListRequest> createRepeated() =>
      $pb.PbList<ImageModeListRequest>();
  @$core.pragma('dart2js:noInline')
  static ImageModeListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImageModeListRequest>(create);
  static ImageModeListRequest? _defaultInstance;
}

class ImageModeListResponse extends $pb.GeneratedMessage {
  factory ImageModeListResponse({
    $core.Iterable<ImageModeResponse>? results,
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
  ImageModeListResponse._() : super();
  factory ImageModeListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ImageModeListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImageModeListResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..pc<ImageModeResponse>(
        1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: ImageModeResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ImageModeListResponse clone() =>
      ImageModeListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ImageModeListResponse copyWith(
          void Function(ImageModeListResponse) updates) =>
      super.copyWith((message) => updates(message as ImageModeListResponse))
          as ImageModeListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageModeListResponse create() => ImageModeListResponse._();
  ImageModeListResponse createEmptyInstance() => create();
  static $pb.PbList<ImageModeListResponse> createRepeated() =>
      $pb.PbList<ImageModeListResponse>();
  @$core.pragma('dart2js:noInline')
  static ImageModeListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImageModeListResponse>(create);
  static ImageModeListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ImageModeResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class ImageModePartialUpdateRequest extends $pb.GeneratedMessage {
  factory ImageModePartialUpdateRequest({
    $core.int? id,
    $core.String? name,
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.String? image,
    $core.String? imageLowPixel,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (image != null) {
      $result.image = image;
    }
    if (imageLowPixel != null) {
      $result.imageLowPixel = imageLowPixel;
    }
    return $result;
  }
  ImageModePartialUpdateRequest._() : super();
  factory ImageModePartialUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ImageModePartialUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImageModePartialUpdateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..aOS(4, _omitFieldNames ? '' : 'image')
    ..aOS(5, _omitFieldNames ? '' : 'imageLowPixel')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ImageModePartialUpdateRequest clone() =>
      ImageModePartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ImageModePartialUpdateRequest copyWith(
          void Function(ImageModePartialUpdateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ImageModePartialUpdateRequest))
          as ImageModePartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageModePartialUpdateRequest create() =>
      ImageModePartialUpdateRequest._();
  ImageModePartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<ImageModePartialUpdateRequest> createRepeated() =>
      $pb.PbList<ImageModePartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static ImageModePartialUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImageModePartialUpdateRequest>(create);
  static ImageModePartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get partialUpdateFields => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get image => $_getSZ(3);
  @$pb.TagNumber(4)
  set image($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearImage() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get imageLowPixel => $_getSZ(4);
  @$pb.TagNumber(5)
  set imageLowPixel($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasImageLowPixel() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageLowPixel() => clearField(5);
}

class ImageModeRequest extends $pb.GeneratedMessage {
  factory ImageModeRequest({
    $core.int? id,
    $core.String? name,
    $core.String? image,
    $core.String? imageLowPixel,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (image != null) {
      $result.image = image;
    }
    if (imageLowPixel != null) {
      $result.imageLowPixel = imageLowPixel;
    }
    return $result;
  }
  ImageModeRequest._() : super();
  factory ImageModeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ImageModeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImageModeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'imageLowPixel')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ImageModeRequest clone() => ImageModeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ImageModeRequest copyWith(void Function(ImageModeRequest) updates) =>
      super.copyWith((message) => updates(message as ImageModeRequest))
          as ImageModeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageModeRequest create() => ImageModeRequest._();
  ImageModeRequest createEmptyInstance() => create();
  static $pb.PbList<ImageModeRequest> createRepeated() =>
      $pb.PbList<ImageModeRequest>();
  @$core.pragma('dart2js:noInline')
  static ImageModeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImageModeRequest>(create);
  static ImageModeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageLowPixel => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageLowPixel($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasImageLowPixel() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageLowPixel() => clearField(4);
}

class ImageModeResponse extends $pb.GeneratedMessage {
  factory ImageModeResponse({
    $core.int? id,
    $core.String? name,
    $core.String? image,
    $core.String? imageLowPixel,
    $core.int? polymorphicCtype,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (image != null) {
      $result.image = image;
    }
    if (imageLowPixel != null) {
      $result.imageLowPixel = imageLowPixel;
    }
    if (polymorphicCtype != null) {
      $result.polymorphicCtype = polymorphicCtype;
    }
    return $result;
  }
  ImageModeResponse._() : super();
  factory ImageModeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ImageModeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImageModeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'imageLowPixel')
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'polymorphicCtype', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ImageModeResponse clone() => ImageModeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ImageModeResponse copyWith(void Function(ImageModeResponse) updates) =>
      super.copyWith((message) => updates(message as ImageModeResponse))
          as ImageModeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageModeResponse create() => ImageModeResponse._();
  ImageModeResponse createEmptyInstance() => create();
  static $pb.PbList<ImageModeResponse> createRepeated() =>
      $pb.PbList<ImageModeResponse>();
  @$core.pragma('dart2js:noInline')
  static ImageModeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImageModeResponse>(create);
  static ImageModeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageLowPixel => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageLowPixel($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasImageLowPixel() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageLowPixel() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get polymorphicCtype => $_getIZ(4);
  @$pb.TagNumber(5)
  set polymorphicCtype($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPolymorphicCtype() => $_has(4);
  @$pb.TagNumber(5)
  void clearPolymorphicCtype() => clearField(5);
}

class ImageModeRetrieveRequest extends $pb.GeneratedMessage {
  factory ImageModeRetrieveRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ImageModeRetrieveRequest._() : super();
  factory ImageModeRetrieveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ImageModeRetrieveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImageModeRetrieveRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ImageModeRetrieveRequest clone() =>
      ImageModeRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ImageModeRetrieveRequest copyWith(
          void Function(ImageModeRetrieveRequest) updates) =>
      super.copyWith((message) => updates(message as ImageModeRetrieveRequest))
          as ImageModeRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageModeRetrieveRequest create() => ImageModeRetrieveRequest._();
  ImageModeRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<ImageModeRetrieveRequest> createRepeated() =>
      $pb.PbList<ImageModeRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static ImageModeRetrieveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImageModeRetrieveRequest>(create);
  static ImageModeRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class LedPanelDestroyRequest extends $pb.GeneratedMessage {
  factory LedPanelDestroyRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  LedPanelDestroyRequest._() : super();
  factory LedPanelDestroyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LedPanelDestroyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LedPanelDestroyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LedPanelDestroyRequest clone() =>
      LedPanelDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LedPanelDestroyRequest copyWith(
          void Function(LedPanelDestroyRequest) updates) =>
      super.copyWith((message) => updates(message as LedPanelDestroyRequest))
          as LedPanelDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelDestroyRequest create() => LedPanelDestroyRequest._();
  LedPanelDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<LedPanelDestroyRequest> createRepeated() =>
      $pb.PbList<LedPanelDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static LedPanelDestroyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LedPanelDestroyRequest>(create);
  static LedPanelDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class LedPanelListRequest extends $pb.GeneratedMessage {
  factory LedPanelListRequest() => create();
  LedPanelListRequest._() : super();
  factory LedPanelListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LedPanelListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LedPanelListRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LedPanelListRequest clone() => LedPanelListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LedPanelListRequest copyWith(void Function(LedPanelListRequest) updates) =>
      super.copyWith((message) => updates(message as LedPanelListRequest))
          as LedPanelListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelListRequest create() => LedPanelListRequest._();
  LedPanelListRequest createEmptyInstance() => create();
  static $pb.PbList<LedPanelListRequest> createRepeated() =>
      $pb.PbList<LedPanelListRequest>();
  @$core.pragma('dart2js:noInline')
  static LedPanelListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LedPanelListRequest>(create);
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
  factory LedPanelListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LedPanelListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LedPanelListResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..pc<LedPanelResponse>(
        1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: LedPanelResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LedPanelListResponse clone() =>
      LedPanelListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LedPanelListResponse copyWith(void Function(LedPanelListResponse) updates) =>
      super.copyWith((message) => updates(message as LedPanelListResponse))
          as LedPanelListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelListResponse create() => LedPanelListResponse._();
  LedPanelListResponse createEmptyInstance() => create();
  static $pb.PbList<LedPanelListResponse> createRepeated() =>
      $pb.PbList<LedPanelListResponse>();
  @$core.pragma('dart2js:noInline')
  static LedPanelListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LedPanelListResponse>(create);
  static LedPanelListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LedPanelResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class LedPanelPartialUpdateRequest extends $pb.GeneratedMessage {
  factory LedPanelPartialUpdateRequest({
    $core.int? id,
    LedModeRequest? mode,
    $core.String? name,
    $core.Iterable<CategoryRequest>? categories,
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.int? status,
    $core.double? brightness,
    $core.String? ipAddress,
    $core.int? ipPort,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (name != null) {
      $result.name = name;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (status != null) {
      $result.status = status;
    }
    if (brightness != null) {
      $result.brightness = brightness;
    }
    if (ipAddress != null) {
      $result.ipAddress = ipAddress;
    }
    if (ipPort != null) {
      $result.ipPort = ipPort;
    }
    return $result;
  }
  LedPanelPartialUpdateRequest._() : super();
  factory LedPanelPartialUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LedPanelPartialUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LedPanelPartialUpdateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<LedModeRequest>(2, _omitFieldNames ? '' : 'mode',
        subBuilder: LedModeRequest.create)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..pc<CategoryRequest>(
        4, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.PM,
        subBuilder: CategoryRequest.create)
    ..pPS(5, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(
        7, _omitFieldNames ? '' : 'brightness', $pb.PbFieldType.OD)
    ..aOS(8, _omitFieldNames ? '' : 'ipAddress')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'ipPort', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LedPanelPartialUpdateRequest clone() =>
      LedPanelPartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LedPanelPartialUpdateRequest copyWith(
          void Function(LedPanelPartialUpdateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as LedPanelPartialUpdateRequest))
          as LedPanelPartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelPartialUpdateRequest create() =>
      LedPanelPartialUpdateRequest._();
  LedPanelPartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<LedPanelPartialUpdateRequest> createRepeated() =>
      $pb.PbList<LedPanelPartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static LedPanelPartialUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LedPanelPartialUpdateRequest>(create);
  static LedPanelPartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  LedModeRequest get mode => $_getN(1);
  @$pb.TagNumber(2)
  set mode(LedModeRequest v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => clearField(2);
  @$pb.TagNumber(2)
  LedModeRequest ensureMode() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<CategoryRequest> get categories => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get partialUpdateFields => $_getList(4);

  @$pb.TagNumber(6)
  $core.int get status => $_getIZ(5);
  @$pb.TagNumber(6)
  set status($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get brightness => $_getN(6);
  @$pb.TagNumber(7)
  set brightness($core.double v) {
    $_setDouble(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasBrightness() => $_has(6);
  @$pb.TagNumber(7)
  void clearBrightness() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get ipAddress => $_getSZ(7);
  @$pb.TagNumber(8)
  set ipAddress($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasIpAddress() => $_has(7);
  @$pb.TagNumber(8)
  void clearIpAddress() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get ipPort => $_getIZ(8);
  @$pb.TagNumber(9)
  set ipPort($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasIpPort() => $_has(8);
  @$pb.TagNumber(9)
  void clearIpPort() => clearField(9);
}

class LedPanelRequest extends $pb.GeneratedMessage {
  factory LedPanelRequest({
    $core.int? id,
    LedModeRequest? mode,
    $core.String? name,
    $core.Iterable<CategoryRequest>? categories,
    $core.int? status,
    $core.double? brightness,
    $core.String? ipAddress,
    $core.int? ipPort,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (name != null) {
      $result.name = name;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (status != null) {
      $result.status = status;
    }
    if (brightness != null) {
      $result.brightness = brightness;
    }
    if (ipAddress != null) {
      $result.ipAddress = ipAddress;
    }
    if (ipPort != null) {
      $result.ipPort = ipPort;
    }
    return $result;
  }
  LedPanelRequest._() : super();
  factory LedPanelRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LedPanelRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LedPanelRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<LedModeRequest>(2, _omitFieldNames ? '' : 'mode',
        subBuilder: LedModeRequest.create)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..pc<CategoryRequest>(
        4, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.PM,
        subBuilder: CategoryRequest.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(
        6, _omitFieldNames ? '' : 'brightness', $pb.PbFieldType.OD)
    ..aOS(7, _omitFieldNames ? '' : 'ipAddress')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'ipPort', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LedPanelRequest clone() => LedPanelRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LedPanelRequest copyWith(void Function(LedPanelRequest) updates) =>
      super.copyWith((message) => updates(message as LedPanelRequest))
          as LedPanelRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelRequest create() => LedPanelRequest._();
  LedPanelRequest createEmptyInstance() => create();
  static $pb.PbList<LedPanelRequest> createRepeated() =>
      $pb.PbList<LedPanelRequest>();
  @$core.pragma('dart2js:noInline')
  static LedPanelRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LedPanelRequest>(create);
  static LedPanelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  LedModeRequest get mode => $_getN(1);
  @$pb.TagNumber(2)
  set mode(LedModeRequest v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => clearField(2);
  @$pb.TagNumber(2)
  LedModeRequest ensureMode() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<CategoryRequest> get categories => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get status => $_getIZ(4);
  @$pb.TagNumber(5)
  set status($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get brightness => $_getN(5);
  @$pb.TagNumber(6)
  set brightness($core.double v) {
    $_setDouble(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasBrightness() => $_has(5);
  @$pb.TagNumber(6)
  void clearBrightness() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get ipAddress => $_getSZ(6);
  @$pb.TagNumber(7)
  set ipAddress($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasIpAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearIpAddress() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get ipPort => $_getIZ(7);
  @$pb.TagNumber(8)
  set ipPort($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasIpPort() => $_has(7);
  @$pb.TagNumber(8)
  void clearIpPort() => clearField(8);
}

class LedPanelResponse extends $pb.GeneratedMessage {
  factory LedPanelResponse({
    $core.int? id,
    LedModeResponse? mode,
    $core.String? name,
    $core.Iterable<CategoryResponse>? categories,
    $core.int? status,
    $core.double? brightness,
    $core.int? polymorphicCtype,
    $core.String? ipAddress,
    $core.int? ipPort,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (name != null) {
      $result.name = name;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
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
    if (ipAddress != null) {
      $result.ipAddress = ipAddress;
    }
    if (ipPort != null) {
      $result.ipPort = ipPort;
    }
    return $result;
  }
  LedPanelResponse._() : super();
  factory LedPanelResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LedPanelResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LedPanelResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<LedModeResponse>(2, _omitFieldNames ? '' : 'mode',
        subBuilder: LedModeResponse.create)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..pc<CategoryResponse>(
        4, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.PM,
        subBuilder: CategoryResponse.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.double>(
        6, _omitFieldNames ? '' : 'brightness', $pb.PbFieldType.OD)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'polymorphicCtype', $pb.PbFieldType.O3)
    ..aOS(8, _omitFieldNames ? '' : 'ipAddress')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'ipPort', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LedPanelResponse clone() => LedPanelResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LedPanelResponse copyWith(void Function(LedPanelResponse) updates) =>
      super.copyWith((message) => updates(message as LedPanelResponse))
          as LedPanelResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelResponse create() => LedPanelResponse._();
  LedPanelResponse createEmptyInstance() => create();
  static $pb.PbList<LedPanelResponse> createRepeated() =>
      $pb.PbList<LedPanelResponse>();
  @$core.pragma('dart2js:noInline')
  static LedPanelResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LedPanelResponse>(create);
  static LedPanelResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  LedModeResponse get mode => $_getN(1);
  @$pb.TagNumber(2)
  set mode(LedModeResponse v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => clearField(2);
  @$pb.TagNumber(2)
  LedModeResponse ensureMode() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<CategoryResponse> get categories => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get status => $_getIZ(4);
  @$pb.TagNumber(5)
  set status($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get brightness => $_getN(5);
  @$pb.TagNumber(6)
  set brightness($core.double v) {
    $_setDouble(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasBrightness() => $_has(5);
  @$pb.TagNumber(6)
  void clearBrightness() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get polymorphicCtype => $_getIZ(6);
  @$pb.TagNumber(7)
  set polymorphicCtype($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPolymorphicCtype() => $_has(6);
  @$pb.TagNumber(7)
  void clearPolymorphicCtype() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get ipAddress => $_getSZ(7);
  @$pb.TagNumber(8)
  set ipAddress($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasIpAddress() => $_has(7);
  @$pb.TagNumber(8)
  void clearIpAddress() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get ipPort => $_getIZ(8);
  @$pb.TagNumber(9)
  set ipPort($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasIpPort() => $_has(8);
  @$pb.TagNumber(9)
  void clearIpPort() => clearField(9);
}

class LedPanelRetrieveRequest extends $pb.GeneratedMessage {
  factory LedPanelRetrieveRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  LedPanelRetrieveRequest._() : super();
  factory LedPanelRetrieveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LedPanelRetrieveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LedPanelRetrieveRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LedPanelRetrieveRequest clone() =>
      LedPanelRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LedPanelRetrieveRequest copyWith(
          void Function(LedPanelRetrieveRequest) updates) =>
      super.copyWith((message) => updates(message as LedPanelRetrieveRequest))
          as LedPanelRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LedPanelRetrieveRequest create() => LedPanelRetrieveRequest._();
  LedPanelRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<LedPanelRetrieveRequest> createRepeated() =>
      $pb.PbList<LedPanelRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static LedPanelRetrieveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LedPanelRetrieveRequest>(create);
  static LedPanelRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class PatternModeDestroyRequest extends $pb.GeneratedMessage {
  factory PatternModeDestroyRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  PatternModeDestroyRequest._() : super();
  factory PatternModeDestroyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PatternModeDestroyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PatternModeDestroyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PatternModeDestroyRequest clone() =>
      PatternModeDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PatternModeDestroyRequest copyWith(
          void Function(PatternModeDestroyRequest) updates) =>
      super.copyWith((message) => updates(message as PatternModeDestroyRequest))
          as PatternModeDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatternModeDestroyRequest create() => PatternModeDestroyRequest._();
  PatternModeDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<PatternModeDestroyRequest> createRepeated() =>
      $pb.PbList<PatternModeDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static PatternModeDestroyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PatternModeDestroyRequest>(create);
  static PatternModeDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class PatternModeListRequest extends $pb.GeneratedMessage {
  factory PatternModeListRequest() => create();
  PatternModeListRequest._() : super();
  factory PatternModeListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PatternModeListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PatternModeListRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PatternModeListRequest clone() =>
      PatternModeListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PatternModeListRequest copyWith(
          void Function(PatternModeListRequest) updates) =>
      super.copyWith((message) => updates(message as PatternModeListRequest))
          as PatternModeListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatternModeListRequest create() => PatternModeListRequest._();
  PatternModeListRequest createEmptyInstance() => create();
  static $pb.PbList<PatternModeListRequest> createRepeated() =>
      $pb.PbList<PatternModeListRequest>();
  @$core.pragma('dart2js:noInline')
  static PatternModeListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PatternModeListRequest>(create);
  static PatternModeListRequest? _defaultInstance;
}

class PatternModeListResponse extends $pb.GeneratedMessage {
  factory PatternModeListResponse({
    $core.Iterable<PatternModeResponse>? results,
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
  PatternModeListResponse._() : super();
  factory PatternModeListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PatternModeListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PatternModeListResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..pc<PatternModeResponse>(
        1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: PatternModeResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PatternModeListResponse clone() =>
      PatternModeListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PatternModeListResponse copyWith(
          void Function(PatternModeListResponse) updates) =>
      super.copyWith((message) => updates(message as PatternModeListResponse))
          as PatternModeListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatternModeListResponse create() => PatternModeListResponse._();
  PatternModeListResponse createEmptyInstance() => create();
  static $pb.PbList<PatternModeListResponse> createRepeated() =>
      $pb.PbList<PatternModeListResponse>();
  @$core.pragma('dart2js:noInline')
  static PatternModeListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PatternModeListResponse>(create);
  static PatternModeListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PatternModeResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class PatternModePartialUpdateRequest extends $pb.GeneratedMessage {
  factory PatternModePartialUpdateRequest({
    $core.int? id,
    $core.String? name,
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.double? fps,
    $core.double? blink,
    $core.Iterable<$core.String>? palette,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (fps != null) {
      $result.fps = fps;
    }
    if (blink != null) {
      $result.blink = blink;
    }
    if (palette != null) {
      $result.palette.addAll(palette);
    }
    return $result;
  }
  PatternModePartialUpdateRequest._() : super();
  factory PatternModePartialUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PatternModePartialUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PatternModePartialUpdateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'fps', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'blink', $pb.PbFieldType.OD)
    ..pPS(6, _omitFieldNames ? '' : 'palette')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PatternModePartialUpdateRequest clone() =>
      PatternModePartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PatternModePartialUpdateRequest copyWith(
          void Function(PatternModePartialUpdateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as PatternModePartialUpdateRequest))
          as PatternModePartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatternModePartialUpdateRequest create() =>
      PatternModePartialUpdateRequest._();
  PatternModePartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<PatternModePartialUpdateRequest> createRepeated() =>
      $pb.PbList<PatternModePartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static PatternModePartialUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PatternModePartialUpdateRequest>(
          create);
  static PatternModePartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get partialUpdateFields => $_getList(2);

  @$pb.TagNumber(4)
  $core.double get fps => $_getN(3);
  @$pb.TagNumber(4)
  set fps($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFps() => $_has(3);
  @$pb.TagNumber(4)
  void clearFps() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get blink => $_getN(4);
  @$pb.TagNumber(5)
  set blink($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBlink() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlink() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get palette => $_getList(5);
}

class PatternModeRequest extends $pb.GeneratedMessage {
  factory PatternModeRequest({
    $core.int? id,
    $core.String? name,
    $core.double? fps,
    $core.double? blink,
    $core.Iterable<$core.String>? palette,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (fps != null) {
      $result.fps = fps;
    }
    if (blink != null) {
      $result.blink = blink;
    }
    if (palette != null) {
      $result.palette.addAll(palette);
    }
    return $result;
  }
  PatternModeRequest._() : super();
  factory PatternModeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PatternModeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PatternModeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'fps', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'blink', $pb.PbFieldType.OD)
    ..pPS(5, _omitFieldNames ? '' : 'palette')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PatternModeRequest clone() => PatternModeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PatternModeRequest copyWith(void Function(PatternModeRequest) updates) =>
      super.copyWith((message) => updates(message as PatternModeRequest))
          as PatternModeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatternModeRequest create() => PatternModeRequest._();
  PatternModeRequest createEmptyInstance() => create();
  static $pb.PbList<PatternModeRequest> createRepeated() =>
      $pb.PbList<PatternModeRequest>();
  @$core.pragma('dart2js:noInline')
  static PatternModeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PatternModeRequest>(create);
  static PatternModeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get fps => $_getN(2);
  @$pb.TagNumber(3)
  set fps($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFps() => $_has(2);
  @$pb.TagNumber(3)
  void clearFps() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get blink => $_getN(3);
  @$pb.TagNumber(4)
  set blink($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBlink() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlink() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get palette => $_getList(4);
}

class PatternModeResponse extends $pb.GeneratedMessage {
  factory PatternModeResponse({
    $core.int? id,
    $core.String? name,
    $core.double? fps,
    $core.double? blink,
    $core.Iterable<$core.String>? palette,
    $core.int? polymorphicCtype,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (fps != null) {
      $result.fps = fps;
    }
    if (blink != null) {
      $result.blink = blink;
    }
    if (palette != null) {
      $result.palette.addAll(palette);
    }
    if (polymorphicCtype != null) {
      $result.polymorphicCtype = polymorphicCtype;
    }
    return $result;
  }
  PatternModeResponse._() : super();
  factory PatternModeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PatternModeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PatternModeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'fps', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'blink', $pb.PbFieldType.OD)
    ..pPS(5, _omitFieldNames ? '' : 'palette')
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'polymorphicCtype', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PatternModeResponse clone() => PatternModeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PatternModeResponse copyWith(void Function(PatternModeResponse) updates) =>
      super.copyWith((message) => updates(message as PatternModeResponse))
          as PatternModeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatternModeResponse create() => PatternModeResponse._();
  PatternModeResponse createEmptyInstance() => create();
  static $pb.PbList<PatternModeResponse> createRepeated() =>
      $pb.PbList<PatternModeResponse>();
  @$core.pragma('dart2js:noInline')
  static PatternModeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PatternModeResponse>(create);
  static PatternModeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get fps => $_getN(2);
  @$pb.TagNumber(3)
  set fps($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFps() => $_has(2);
  @$pb.TagNumber(3)
  void clearFps() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get blink => $_getN(3);
  @$pb.TagNumber(4)
  set blink($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBlink() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlink() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get palette => $_getList(4);

  @$pb.TagNumber(6)
  $core.int get polymorphicCtype => $_getIZ(5);
  @$pb.TagNumber(6)
  set polymorphicCtype($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasPolymorphicCtype() => $_has(5);
  @$pb.TagNumber(6)
  void clearPolymorphicCtype() => clearField(6);
}

class PatternModeRetrieveRequest extends $pb.GeneratedMessage {
  factory PatternModeRetrieveRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  PatternModeRetrieveRequest._() : super();
  factory PatternModeRetrieveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PatternModeRetrieveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PatternModeRetrieveRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PatternModeRetrieveRequest clone() =>
      PatternModeRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PatternModeRetrieveRequest copyWith(
          void Function(PatternModeRetrieveRequest) updates) =>
      super.copyWith(
              (message) => updates(message as PatternModeRetrieveRequest))
          as PatternModeRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatternModeRetrieveRequest create() => PatternModeRetrieveRequest._();
  PatternModeRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<PatternModeRetrieveRequest> createRepeated() =>
      $pb.PbList<PatternModeRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static PatternModeRetrieveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PatternModeRetrieveRequest>(create);
  static PatternModeRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ProjectDestroyRequest extends $pb.GeneratedMessage {
  factory ProjectDestroyRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ProjectDestroyRequest._() : super();
  factory ProjectDestroyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProjectDestroyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectDestroyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ProjectDestroyRequest clone() =>
      ProjectDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ProjectDestroyRequest copyWith(
          void Function(ProjectDestroyRequest) updates) =>
      super.copyWith((message) => updates(message as ProjectDestroyRequest))
          as ProjectDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectDestroyRequest create() => ProjectDestroyRequest._();
  ProjectDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<ProjectDestroyRequest> createRepeated() =>
      $pb.PbList<ProjectDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static ProjectDestroyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectDestroyRequest>(create);
  static ProjectDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ProjectListRequest extends $pb.GeneratedMessage {
  factory ProjectListRequest() => create();
  ProjectListRequest._() : super();
  factory ProjectListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProjectListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectListRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ProjectListRequest clone() => ProjectListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ProjectListRequest copyWith(void Function(ProjectListRequest) updates) =>
      super.copyWith((message) => updates(message as ProjectListRequest))
          as ProjectListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectListRequest create() => ProjectListRequest._();
  ProjectListRequest createEmptyInstance() => create();
  static $pb.PbList<ProjectListRequest> createRepeated() =>
      $pb.PbList<ProjectListRequest>();
  @$core.pragma('dart2js:noInline')
  static ProjectListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectListRequest>(create);
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
  factory ProjectListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProjectListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectListResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..pc<ProjectResponse>(
        1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: ProjectResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ProjectListResponse clone() => ProjectListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ProjectListResponse copyWith(void Function(ProjectListResponse) updates) =>
      super.copyWith((message) => updates(message as ProjectListResponse))
          as ProjectListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectListResponse create() => ProjectListResponse._();
  ProjectListResponse createEmptyInstance() => create();
  static $pb.PbList<ProjectListResponse> createRepeated() =>
      $pb.PbList<ProjectListResponse>();
  @$core.pragma('dart2js:noInline')
  static ProjectListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectListResponse>(create);
  static ProjectListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProjectResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class ProjectPartialUpdateRequest extends $pb.GeneratedMessage {
  factory ProjectPartialUpdateRequest({
    $core.int? id,
    $core.Iterable<BaseProductRequest>? products,
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.String? pubDate,
    $core.String? name,
    UserRequest? owner,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
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
    return $result;
  }
  ProjectPartialUpdateRequest._() : super();
  factory ProjectPartialUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProjectPartialUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectPartialUpdateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..pc<BaseProductRequest>(
        2, _omitFieldNames ? '' : 'products', $pb.PbFieldType.PM,
        subBuilder: BaseProductRequest.create)
    ..pPS(3, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..aOS(4, _omitFieldNames ? '' : 'pubDate')
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..aOM<UserRequest>(6, _omitFieldNames ? '' : 'owner',
        subBuilder: UserRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ProjectPartialUpdateRequest clone() =>
      ProjectPartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ProjectPartialUpdateRequest copyWith(
          void Function(ProjectPartialUpdateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ProjectPartialUpdateRequest))
          as ProjectPartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectPartialUpdateRequest create() =>
      ProjectPartialUpdateRequest._();
  ProjectPartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<ProjectPartialUpdateRequest> createRepeated() =>
      $pb.PbList<ProjectPartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static ProjectPartialUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectPartialUpdateRequest>(create);
  static ProjectPartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<BaseProductRequest> get products => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get partialUpdateFields => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get pubDate => $_getSZ(3);
  @$pb.TagNumber(4)
  set pubDate($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPubDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearPubDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  @$pb.TagNumber(6)
  UserRequest get owner => $_getN(5);
  @$pb.TagNumber(6)
  set owner(UserRequest v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasOwner() => $_has(5);
  @$pb.TagNumber(6)
  void clearOwner() => clearField(6);
  @$pb.TagNumber(6)
  UserRequest ensureOwner() => $_ensure(5);
}

class ProjectRequest extends $pb.GeneratedMessage {
  factory ProjectRequest({
    $core.int? id,
    $core.Iterable<BaseProductRequest>? products,
    $core.String? pubDate,
    $core.String? name,
    UserRequest? owner,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
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
    return $result;
  }
  ProjectRequest._() : super();
  factory ProjectRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProjectRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..pc<BaseProductRequest>(
        2, _omitFieldNames ? '' : 'products', $pb.PbFieldType.PM,
        subBuilder: BaseProductRequest.create)
    ..aOS(3, _omitFieldNames ? '' : 'pubDate')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOM<UserRequest>(5, _omitFieldNames ? '' : 'owner',
        subBuilder: UserRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ProjectRequest clone() => ProjectRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ProjectRequest copyWith(void Function(ProjectRequest) updates) =>
      super.copyWith((message) => updates(message as ProjectRequest))
          as ProjectRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectRequest create() => ProjectRequest._();
  ProjectRequest createEmptyInstance() => create();
  static $pb.PbList<ProjectRequest> createRepeated() =>
      $pb.PbList<ProjectRequest>();
  @$core.pragma('dart2js:noInline')
  static ProjectRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectRequest>(create);
  static ProjectRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<BaseProductRequest> get products => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get pubDate => $_getSZ(2);
  @$pb.TagNumber(3)
  set pubDate($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPubDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearPubDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  UserRequest get owner => $_getN(4);
  @$pb.TagNumber(5)
  set owner(UserRequest v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOwner() => $_has(4);
  @$pb.TagNumber(5)
  void clearOwner() => clearField(5);
  @$pb.TagNumber(5)
  UserRequest ensureOwner() => $_ensure(4);
}

class ProjectResponse extends $pb.GeneratedMessage {
  factory ProjectResponse({
    $core.int? id,
    $core.Iterable<BaseProductResponse>? products,
    $core.String? pubDate,
    $core.String? name,
    UserResponse? owner,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
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
    return $result;
  }
  ProjectResponse._() : super();
  factory ProjectResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProjectResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..pc<BaseProductResponse>(
        2, _omitFieldNames ? '' : 'products', $pb.PbFieldType.PM,
        subBuilder: BaseProductResponse.create)
    ..aOS(3, _omitFieldNames ? '' : 'pubDate')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOM<UserResponse>(5, _omitFieldNames ? '' : 'owner',
        subBuilder: UserResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ProjectResponse clone() => ProjectResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ProjectResponse copyWith(void Function(ProjectResponse) updates) =>
      super.copyWith((message) => updates(message as ProjectResponse))
          as ProjectResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectResponse create() => ProjectResponse._();
  ProjectResponse createEmptyInstance() => create();
  static $pb.PbList<ProjectResponse> createRepeated() =>
      $pb.PbList<ProjectResponse>();
  @$core.pragma('dart2js:noInline')
  static ProjectResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectResponse>(create);
  static ProjectResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<BaseProductResponse> get products => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get pubDate => $_getSZ(2);
  @$pb.TagNumber(3)
  set pubDate($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPubDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearPubDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  UserResponse get owner => $_getN(4);
  @$pb.TagNumber(5)
  set owner(UserResponse v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOwner() => $_has(4);
  @$pb.TagNumber(5)
  void clearOwner() => clearField(5);
  @$pb.TagNumber(5)
  UserResponse ensureOwner() => $_ensure(4);
}

class ProjectRetrieveRequest extends $pb.GeneratedMessage {
  factory ProjectRetrieveRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ProjectRetrieveRequest._() : super();
  factory ProjectRetrieveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProjectRetrieveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectRetrieveRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ProjectRetrieveRequest clone() =>
      ProjectRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ProjectRetrieveRequest copyWith(
          void Function(ProjectRetrieveRequest) updates) =>
      super.copyWith((message) => updates(message as ProjectRetrieveRequest))
          as ProjectRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectRetrieveRequest create() => ProjectRetrieveRequest._();
  ProjectRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<ProjectRetrieveRequest> createRepeated() =>
      $pb.PbList<ProjectRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static ProjectRetrieveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectRetrieveRequest>(create);
  static ProjectRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UserDestroyRequest extends $pb.GeneratedMessage {
  factory UserDestroyRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  UserDestroyRequest._() : super();
  factory UserDestroyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserDestroyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserDestroyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserDestroyRequest clone() => UserDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserDestroyRequest copyWith(void Function(UserDestroyRequest) updates) =>
      super.copyWith((message) => updates(message as UserDestroyRequest))
          as UserDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserDestroyRequest create() => UserDestroyRequest._();
  UserDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<UserDestroyRequest> createRepeated() =>
      $pb.PbList<UserDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static UserDestroyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserDestroyRequest>(create);
  static UserDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UserListRequest extends $pb.GeneratedMessage {
  factory UserListRequest() => create();
  UserListRequest._() : super();
  factory UserListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserListRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserListRequest clone() => UserListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserListRequest copyWith(void Function(UserListRequest) updates) =>
      super.copyWith((message) => updates(message as UserListRequest))
          as UserListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserListRequest create() => UserListRequest._();
  UserListRequest createEmptyInstance() => create();
  static $pb.PbList<UserListRequest> createRepeated() =>
      $pb.PbList<UserListRequest>();
  @$core.pragma('dart2js:noInline')
  static UserListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserListRequest>(create);
  static UserListRequest? _defaultInstance;
}

class UserListResponse extends $pb.GeneratedMessage {
  factory UserListResponse({
    $core.Iterable<UserResponse>? results,
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
  UserListResponse._() : super();
  factory UserListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserListResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..pc<UserResponse>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: UserResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserListResponse clone() => UserListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserListResponse copyWith(void Function(UserListResponse) updates) =>
      super.copyWith((message) => updates(message as UserListResponse))
          as UserListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserListResponse create() => UserListResponse._();
  UserListResponse createEmptyInstance() => create();
  static $pb.PbList<UserListResponse> createRepeated() =>
      $pb.PbList<UserListResponse>();
  @$core.pragma('dart2js:noInline')
  static UserListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserListResponse>(create);
  static UserListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class UserPartialUpdateRequest extends $pb.GeneratedMessage {
  factory UserPartialUpdateRequest({
    $core.int? id,
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.String? username,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? email,
    $core.Iterable<$core.int>? groups,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (username != null) {
      $result.username = username;
    }
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (email != null) {
      $result.email = email;
    }
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    return $result;
  }
  UserPartialUpdateRequest._() : super();
  factory UserPartialUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserPartialUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserPartialUpdateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..pPS(2, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..aOS(6, _omitFieldNames ? '' : 'username')
    ..aOS(7, _omitFieldNames ? '' : 'firstName')
    ..aOS(8, _omitFieldNames ? '' : 'lastName')
    ..aOS(9, _omitFieldNames ? '' : 'email')
    ..p<$core.int>(13, _omitFieldNames ? '' : 'groups', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserPartialUpdateRequest clone() =>
      UserPartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserPartialUpdateRequest copyWith(
          void Function(UserPartialUpdateRequest) updates) =>
      super.copyWith((message) => updates(message as UserPartialUpdateRequest))
          as UserPartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPartialUpdateRequest create() => UserPartialUpdateRequest._();
  UserPartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<UserPartialUpdateRequest> createRepeated() =>
      $pb.PbList<UserPartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static UserPartialUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserPartialUpdateRequest>(create);
  static UserPartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get partialUpdateFields => $_getList(1);

  @$pb.TagNumber(6)
  $core.String get username => $_getSZ(2);
  @$pb.TagNumber(6)
  set username($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUsername() => $_has(2);
  @$pb.TagNumber(6)
  void clearUsername() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get firstName => $_getSZ(3);
  @$pb.TagNumber(7)
  set firstName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasFirstName() => $_has(3);
  @$pb.TagNumber(7)
  void clearFirstName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lastName => $_getSZ(4);
  @$pb.TagNumber(8)
  set lastName($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasLastName() => $_has(4);
  @$pb.TagNumber(8)
  void clearLastName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get email => $_getSZ(5);
  @$pb.TagNumber(9)
  set email($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasEmail() => $_has(5);
  @$pb.TagNumber(9)
  void clearEmail() => clearField(9);

  @$pb.TagNumber(13)
  $core.List<$core.int> get groups => $_getList(6);
}

class UserRequest extends $pb.GeneratedMessage {
  factory UserRequest({
    $core.int? id,
    $core.String? username,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? email,
    $core.Iterable<$core.int>? groups,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (username != null) {
      $result.username = username;
    }
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (email != null) {
      $result.email = email;
    }
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    return $result;
  }
  UserRequest._() : super();
  factory UserRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'username')
    ..aOS(6, _omitFieldNames ? '' : 'firstName')
    ..aOS(7, _omitFieldNames ? '' : 'lastName')
    ..aOS(8, _omitFieldNames ? '' : 'email')
    ..p<$core.int>(12, _omitFieldNames ? '' : 'groups', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserRequest clone() => UserRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserRequest copyWith(void Function(UserRequest) updates) =>
      super.copyWith((message) => updates(message as UserRequest))
          as UserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRequest create() => UserRequest._();
  UserRequest createEmptyInstance() => create();
  static $pb.PbList<UserRequest> createRepeated() => $pb.PbList<UserRequest>();
  @$core.pragma('dart2js:noInline')
  static UserRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserRequest>(create);
  static UserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(5)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(5)
  set username($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(5)
  void clearUsername() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get firstName => $_getSZ(2);
  @$pb.TagNumber(6)
  set firstName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasFirstName() => $_has(2);
  @$pb.TagNumber(6)
  void clearFirstName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastName => $_getSZ(3);
  @$pb.TagNumber(7)
  set lastName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasLastName() => $_has(3);
  @$pb.TagNumber(7)
  void clearLastName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(8)
  set email($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(8)
  void clearEmail() => clearField(8);

  @$pb.TagNumber(12)
  $core.List<$core.int> get groups => $_getList(5);
}

class UserResponse extends $pb.GeneratedMessage {
  factory UserResponse({
    $core.int? id,
    $core.String? username,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? email,
    $core.Iterable<$core.int>? groups,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (username != null) {
      $result.username = username;
    }
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (email != null) {
      $result.email = email;
    }
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    return $result;
  }
  UserResponse._() : super();
  factory UserResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'username')
    ..aOS(6, _omitFieldNames ? '' : 'firstName')
    ..aOS(7, _omitFieldNames ? '' : 'lastName')
    ..aOS(8, _omitFieldNames ? '' : 'email')
    ..p<$core.int>(12, _omitFieldNames ? '' : 'groups', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserResponse clone() => UserResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserResponse copyWith(void Function(UserResponse) updates) =>
      super.copyWith((message) => updates(message as UserResponse))
          as UserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserResponse create() => UserResponse._();
  UserResponse createEmptyInstance() => create();
  static $pb.PbList<UserResponse> createRepeated() =>
      $pb.PbList<UserResponse>();
  @$core.pragma('dart2js:noInline')
  static UserResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserResponse>(create);
  static UserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(5)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(5)
  set username($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(5)
  void clearUsername() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get firstName => $_getSZ(2);
  @$pb.TagNumber(6)
  set firstName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasFirstName() => $_has(2);
  @$pb.TagNumber(6)
  void clearFirstName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastName => $_getSZ(3);
  @$pb.TagNumber(7)
  set lastName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasLastName() => $_has(3);
  @$pb.TagNumber(7)
  void clearLastName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(8)
  set email($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(8)
  void clearEmail() => clearField(8);

  @$pb.TagNumber(12)
  $core.List<$core.int> get groups => $_getList(5);
}

class UserRetrieveRequest extends $pb.GeneratedMessage {
  factory UserRetrieveRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  UserRetrieveRequest._() : super();
  factory UserRetrieveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserRetrieveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserRetrieveRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserRetrieveRequest clone() => UserRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserRetrieveRequest copyWith(void Function(UserRetrieveRequest) updates) =>
      super.copyWith((message) => updates(message as UserRetrieveRequest))
          as UserRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRetrieveRequest create() => UserRetrieveRequest._();
  UserRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<UserRetrieveRequest> createRepeated() =>
      $pb.PbList<UserRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static UserRetrieveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserRetrieveRequest>(create);
  static UserRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class VideoModeDestroyRequest extends $pb.GeneratedMessage {
  factory VideoModeDestroyRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  VideoModeDestroyRequest._() : super();
  factory VideoModeDestroyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VideoModeDestroyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoModeDestroyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VideoModeDestroyRequest clone() =>
      VideoModeDestroyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VideoModeDestroyRequest copyWith(
          void Function(VideoModeDestroyRequest) updates) =>
      super.copyWith((message) => updates(message as VideoModeDestroyRequest))
          as VideoModeDestroyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoModeDestroyRequest create() => VideoModeDestroyRequest._();
  VideoModeDestroyRequest createEmptyInstance() => create();
  static $pb.PbList<VideoModeDestroyRequest> createRepeated() =>
      $pb.PbList<VideoModeDestroyRequest>();
  @$core.pragma('dart2js:noInline')
  static VideoModeDestroyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoModeDestroyRequest>(create);
  static VideoModeDestroyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class VideoModeListRequest extends $pb.GeneratedMessage {
  factory VideoModeListRequest() => create();
  VideoModeListRequest._() : super();
  factory VideoModeListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VideoModeListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoModeListRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VideoModeListRequest clone() =>
      VideoModeListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VideoModeListRequest copyWith(void Function(VideoModeListRequest) updates) =>
      super.copyWith((message) => updates(message as VideoModeListRequest))
          as VideoModeListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoModeListRequest create() => VideoModeListRequest._();
  VideoModeListRequest createEmptyInstance() => create();
  static $pb.PbList<VideoModeListRequest> createRepeated() =>
      $pb.PbList<VideoModeListRequest>();
  @$core.pragma('dart2js:noInline')
  static VideoModeListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoModeListRequest>(create);
  static VideoModeListRequest? _defaultInstance;
}

class VideoModeListResponse extends $pb.GeneratedMessage {
  factory VideoModeListResponse({
    $core.Iterable<VideoModeResponse>? results,
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
  VideoModeListResponse._() : super();
  factory VideoModeListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VideoModeListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoModeListResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..pc<VideoModeResponse>(
        1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: VideoModeResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VideoModeListResponse clone() =>
      VideoModeListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VideoModeListResponse copyWith(
          void Function(VideoModeListResponse) updates) =>
      super.copyWith((message) => updates(message as VideoModeListResponse))
          as VideoModeListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoModeListResponse create() => VideoModeListResponse._();
  VideoModeListResponse createEmptyInstance() => create();
  static $pb.PbList<VideoModeListResponse> createRepeated() =>
      $pb.PbList<VideoModeListResponse>();
  @$core.pragma('dart2js:noInline')
  static VideoModeListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoModeListResponse>(create);
  static VideoModeListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<VideoModeResponse> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class VideoModePartialUpdateRequest extends $pb.GeneratedMessage {
  factory VideoModePartialUpdateRequest({
    $core.int? id,
    $core.String? name,
    $core.Iterable<$core.String>? partialUpdateFields,
    $core.String? video,
    $core.String? videoLowPixel,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (partialUpdateFields != null) {
      $result.partialUpdateFields.addAll(partialUpdateFields);
    }
    if (video != null) {
      $result.video = video;
    }
    if (videoLowPixel != null) {
      $result.videoLowPixel = videoLowPixel;
    }
    return $result;
  }
  VideoModePartialUpdateRequest._() : super();
  factory VideoModePartialUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VideoModePartialUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoModePartialUpdateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'PartialUpdateFields')
    ..aOS(4, _omitFieldNames ? '' : 'video')
    ..aOS(5, _omitFieldNames ? '' : 'videoLowPixel')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VideoModePartialUpdateRequest clone() =>
      VideoModePartialUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VideoModePartialUpdateRequest copyWith(
          void Function(VideoModePartialUpdateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as VideoModePartialUpdateRequest))
          as VideoModePartialUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoModePartialUpdateRequest create() =>
      VideoModePartialUpdateRequest._();
  VideoModePartialUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<VideoModePartialUpdateRequest> createRepeated() =>
      $pb.PbList<VideoModePartialUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static VideoModePartialUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoModePartialUpdateRequest>(create);
  static VideoModePartialUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get partialUpdateFields => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get video => $_getSZ(3);
  @$pb.TagNumber(4)
  set video($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVideo() => $_has(3);
  @$pb.TagNumber(4)
  void clearVideo() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get videoLowPixel => $_getSZ(4);
  @$pb.TagNumber(5)
  set videoLowPixel($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasVideoLowPixel() => $_has(4);
  @$pb.TagNumber(5)
  void clearVideoLowPixel() => clearField(5);
}

class VideoModeRequest extends $pb.GeneratedMessage {
  factory VideoModeRequest({
    $core.int? id,
    $core.String? name,
    $core.String? video,
    $core.String? videoLowPixel,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (video != null) {
      $result.video = video;
    }
    if (videoLowPixel != null) {
      $result.videoLowPixel = videoLowPixel;
    }
    return $result;
  }
  VideoModeRequest._() : super();
  factory VideoModeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VideoModeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoModeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'video')
    ..aOS(4, _omitFieldNames ? '' : 'videoLowPixel')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VideoModeRequest clone() => VideoModeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VideoModeRequest copyWith(void Function(VideoModeRequest) updates) =>
      super.copyWith((message) => updates(message as VideoModeRequest))
          as VideoModeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoModeRequest create() => VideoModeRequest._();
  VideoModeRequest createEmptyInstance() => create();
  static $pb.PbList<VideoModeRequest> createRepeated() =>
      $pb.PbList<VideoModeRequest>();
  @$core.pragma('dart2js:noInline')
  static VideoModeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoModeRequest>(create);
  static VideoModeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get video => $_getSZ(2);
  @$pb.TagNumber(3)
  set video($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVideo() => $_has(2);
  @$pb.TagNumber(3)
  void clearVideo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get videoLowPixel => $_getSZ(3);
  @$pb.TagNumber(4)
  set videoLowPixel($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVideoLowPixel() => $_has(3);
  @$pb.TagNumber(4)
  void clearVideoLowPixel() => clearField(4);
}

class VideoModeResponse extends $pb.GeneratedMessage {
  factory VideoModeResponse({
    $core.int? id,
    $core.String? name,
    $core.String? video,
    $core.String? videoLowPixel,
    $core.int? polymorphicCtype,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (video != null) {
      $result.video = video;
    }
    if (videoLowPixel != null) {
      $result.videoLowPixel = videoLowPixel;
    }
    if (polymorphicCtype != null) {
      $result.polymorphicCtype = polymorphicCtype;
    }
    return $result;
  }
  VideoModeResponse._() : super();
  factory VideoModeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VideoModeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoModeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'video')
    ..aOS(4, _omitFieldNames ? '' : 'videoLowPixel')
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'polymorphicCtype', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VideoModeResponse clone() => VideoModeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VideoModeResponse copyWith(void Function(VideoModeResponse) updates) =>
      super.copyWith((message) => updates(message as VideoModeResponse))
          as VideoModeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoModeResponse create() => VideoModeResponse._();
  VideoModeResponse createEmptyInstance() => create();
  static $pb.PbList<VideoModeResponse> createRepeated() =>
      $pb.PbList<VideoModeResponse>();
  @$core.pragma('dart2js:noInline')
  static VideoModeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoModeResponse>(create);
  static VideoModeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get video => $_getSZ(2);
  @$pb.TagNumber(3)
  set video($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVideo() => $_has(2);
  @$pb.TagNumber(3)
  void clearVideo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get videoLowPixel => $_getSZ(3);
  @$pb.TagNumber(4)
  set videoLowPixel($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVideoLowPixel() => $_has(3);
  @$pb.TagNumber(4)
  void clearVideoLowPixel() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get polymorphicCtype => $_getIZ(4);
  @$pb.TagNumber(5)
  set polymorphicCtype($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPolymorphicCtype() => $_has(4);
  @$pb.TagNumber(5)
  void clearPolymorphicCtype() => clearField(5);
}

class VideoModeRetrieveRequest extends $pb.GeneratedMessage {
  factory VideoModeRetrieveRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  VideoModeRetrieveRequest._() : super();
  factory VideoModeRetrieveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VideoModeRetrieveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoModeRetrieveRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'base_app.products_controller'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VideoModeRetrieveRequest clone() =>
      VideoModeRetrieveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VideoModeRetrieveRequest copyWith(
          void Function(VideoModeRetrieveRequest) updates) =>
      super.copyWith((message) => updates(message as VideoModeRetrieveRequest))
          as VideoModeRetrieveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoModeRetrieveRequest create() => VideoModeRetrieveRequest._();
  VideoModeRetrieveRequest createEmptyInstance() => create();
  static $pb.PbList<VideoModeRetrieveRequest> createRepeated() =>
      $pb.PbList<VideoModeRetrieveRequest>();
  @$core.pragma('dart2js:noInline')
  static VideoModeRetrieveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoModeRetrieveRequest>(create);
  static VideoModeRetrieveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
