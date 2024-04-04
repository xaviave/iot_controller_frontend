//
//  Generated code. Do not modify.
//  source: backend.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use baseProductRequestDescriptor instead')
const BaseProductRequest$json = {
  '1': 'BaseProductRequest',
  '2': [
    {
      '1': 'CoffeeMachine',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.CoffeeMachineRequest',
      '9': 0,
      '10': 'CoffeeMachine'
    },
    {
      '1': 'LedPanel',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.LedPanelRequest',
      '9': 0,
      '10': 'LedPanel'
    },
  ],
  '8': [
    {'1': 'product'},
  ],
};

/// Descriptor for `BaseProductRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseProductRequestDescriptor = $convert.base64Decode(
    'ChJCYXNlUHJvZHVjdFJlcXVlc3QSWgoNQ29mZmVlTWFjaGluZRgCIAEoCzIyLmJhc2VfYXBwLn'
    'Byb2R1Y3RzX2NvbnRyb2xsZXIuQ29mZmVlTWFjaGluZVJlcXVlc3RIAFINQ29mZmVlTWFjaGlu'
    'ZRJLCghMZWRQYW5lbBgDIAEoCzItLmJhc2VfYXBwLnByb2R1Y3RzX2NvbnRyb2xsZXIuTGVkUG'
    'FuZWxSZXF1ZXN0SABSCExlZFBhbmVsQgkKB3Byb2R1Y3Q=');

@$core.Deprecated('Use baseProductResponseDescriptor instead')
const BaseProductResponse$json = {
  '1': 'BaseProductResponse',
  '2': [
    {
      '1': 'CoffeeMachine',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.CoffeeMachineResponse',
      '9': 0,
      '10': 'CoffeeMachine'
    },
    {
      '1': 'LedPanel',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.LedPanelResponse',
      '9': 0,
      '10': 'LedPanel'
    },
  ],
  '8': [
    {'1': 'product'},
  ],
};

/// Descriptor for `BaseProductResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseProductResponseDescriptor = $convert.base64Decode(
    'ChNCYXNlUHJvZHVjdFJlc3BvbnNlElsKDUNvZmZlZU1hY2hpbmUYAiABKAsyMy5iYXNlX2FwcC'
    '5wcm9kdWN0c19jb250cm9sbGVyLkNvZmZlZU1hY2hpbmVSZXNwb25zZUgAUg1Db2ZmZWVNYWNo'
    'aW5lEkwKCExlZFBhbmVsGAMgASgLMi4uYmFzZV9hcHAucHJvZHVjdHNfY29udHJvbGxlci5MZW'
    'RQYW5lbFJlc3BvbnNlSABSCExlZFBhbmVsQgkKB3Byb2R1Y3Q=');

@$core.Deprecated('Use ledModeRequestDescriptor instead')
const LedModeRequest$json = {
  '1': 'LedModeRequest',
  '2': [
    {
      '1': 'ImageMode',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.ImageModeRequest',
      '9': 0,
      '10': 'ImageMode'
    },
    {
      '1': 'VideoMode',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.VideoModeRequest',
      '9': 0,
      '10': 'VideoMode'
    },
    {
      '1': 'ColorMode',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.ColorModeRequest',
      '9': 0,
      '10': 'ColorMode'
    },
    {
      '1': 'PatternMode',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.PatternModeRequest',
      '9': 0,
      '10': 'PatternMode'
    },
  ],
  '8': [
    {'1': 'mode'},
  ],
};

/// Descriptor for `LedModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledModeRequestDescriptor = $convert.base64Decode(
    'Cg5MZWRNb2RlUmVxdWVzdBJOCglJbWFnZU1vZGUYAiABKAsyLi5iYXNlX2FwcC5wcm9kdWN0c1'
    '9jb250cm9sbGVyLkltYWdlTW9kZVJlcXVlc3RIAFIJSW1hZ2VNb2RlEk4KCVZpZGVvTW9kZRgD'
    'IAEoCzIuLmJhc2VfYXBwLnByb2R1Y3RzX2NvbnRyb2xsZXIuVmlkZW9Nb2RlUmVxdWVzdEgAUg'
    'lWaWRlb01vZGUSTgoJQ29sb3JNb2RlGAQgASgLMi4uYmFzZV9hcHAucHJvZHVjdHNfY29udHJv'
    'bGxlci5Db2xvck1vZGVSZXF1ZXN0SABSCUNvbG9yTW9kZRJUCgtQYXR0ZXJuTW9kZRgFIAEoCz'
    'IwLmJhc2VfYXBwLnByb2R1Y3RzX2NvbnRyb2xsZXIuUGF0dGVybk1vZGVSZXF1ZXN0SABSC1Bh'
    'dHRlcm5Nb2RlQgYKBG1vZGU=');

@$core.Deprecated('Use ledModeResponseDescriptor instead')
const LedModeResponse$json = {
  '1': 'LedModeResponse',
  '2': [
    {
      '1': 'ImageMode',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.ImageModeResponse',
      '9': 0,
      '10': 'ImageMode'
    },
    {
      '1': 'VideoMode',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.VideoModeResponse',
      '9': 0,
      '10': 'VideoMode'
    },
    {
      '1': 'ColorMode',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.ColorModeResponse',
      '9': 0,
      '10': 'ColorMode'
    },
    {
      '1': 'PatternMode',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.PatternModeResponse',
      '9': 0,
      '10': 'PatternMode'
    },
  ],
  '8': [
    {'1': 'mode'},
  ],
};

/// Descriptor for `LedModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledModeResponseDescriptor = $convert.base64Decode(
    'Cg9MZWRNb2RlUmVzcG9uc2USTwoJSW1hZ2VNb2RlGAIgASgLMi8uYmFzZV9hcHAucHJvZHVjdH'
    'NfY29udHJvbGxlci5JbWFnZU1vZGVSZXNwb25zZUgAUglJbWFnZU1vZGUSTwoJVmlkZW9Nb2Rl'
    'GAMgASgLMi8uYmFzZV9hcHAucHJvZHVjdHNfY29udHJvbGxlci5WaWRlb01vZGVSZXNwb25zZU'
    'gAUglWaWRlb01vZGUSTwoJQ29sb3JNb2RlGAQgASgLMi8uYmFzZV9hcHAucHJvZHVjdHNfY29u'
    'dHJvbGxlci5Db2xvck1vZGVSZXNwb25zZUgAUglDb2xvck1vZGUSVQoLUGF0dGVybk1vZGUYBS'
    'ABKAsyMS5iYXNlX2FwcC5wcm9kdWN0c19jb250cm9sbGVyLlBhdHRlcm5Nb2RlUmVzcG9uc2VI'
    'AFILUGF0dGVybk1vZGVCBgoEbW9kZQ==');

@$core.Deprecated('Use categoryDestroyRequestDescriptor instead')
const CategoryDestroyRequest$json = {
  '1': 'CategoryDestroyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `CategoryDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryDestroyRequestDescriptor = $convert
    .base64Decode('ChZDYXRlZ29yeURlc3Ryb3lSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use categoryListRequestDescriptor instead')
const CategoryListRequest$json = {
  '1': 'CategoryListRequest',
};

/// Descriptor for `CategoryListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryListRequestDescriptor =
    $convert.base64Decode('ChNDYXRlZ29yeUxpc3RSZXF1ZXN0');

@$core.Deprecated('Use categoryListResponseDescriptor instead')
const CategoryListResponse$json = {
  '1': 'CategoryListResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.CategoryResponse',
      '10': 'results'
    },
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `CategoryListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryListResponseDescriptor = $convert.base64Decode(
    'ChRDYXRlZ29yeUxpc3RSZXNwb25zZRJICgdyZXN1bHRzGAEgAygLMi4uYmFzZV9hcHAucHJvZH'
    'VjdHNfY29udHJvbGxlci5DYXRlZ29yeVJlc3BvbnNlUgdyZXN1bHRzEhQKBWNvdW50GAIgASgF'
    'UgVjb3VudA==');

@$core.Deprecated('Use categoryPartialUpdateRequestDescriptor instead')
const CategoryPartialUpdateRequest$json = {
  '1': 'CategoryPartialUpdateRequest',
  '2': [
    {
      '1': '_partial_update_fields',
      '3': 2,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'id', '3': 4, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `CategoryPartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryPartialUpdateRequestDescriptor =
    $convert.base64Decode(
        'ChxDYXRlZ29yeVBhcnRpYWxVcGRhdGVSZXF1ZXN0EjMKFl9wYXJ0aWFsX3VwZGF0ZV9maWVsZH'
        'MYAiADKAlSE1BhcnRpYWxVcGRhdGVGaWVsZHMSEgoEbmFtZRgDIAEoCVIEbmFtZRIOCgJpZBgE'
        'IAEoBVICaWQ=');

@$core.Deprecated('Use categoryRequestDescriptor instead')
const CategoryRequest$json = {
  '1': 'CategoryRequest',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'id', '3': 3, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `CategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryRequestDescriptor = $convert.base64Decode(
    'Cg9DYXRlZ29yeVJlcXVlc3QSEgoEbmFtZRgCIAEoCVIEbmFtZRIOCgJpZBgDIAEoBVICaWQ=');

@$core.Deprecated('Use categoryResponseDescriptor instead')
const CategoryResponse$json = {
  '1': 'CategoryResponse',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'id', '3': 3, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `CategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryResponseDescriptor = $convert.base64Decode(
    'ChBDYXRlZ29yeVJlc3BvbnNlEhIKBG5hbWUYAiABKAlSBG5hbWUSDgoCaWQYAyABKAVSAmlk');

@$core.Deprecated('Use categoryRetrieveRequestDescriptor instead')
const CategoryRetrieveRequest$json = {
  '1': 'CategoryRetrieveRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `CategoryRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryRetrieveRequestDescriptor = $convert
    .base64Decode('ChdDYXRlZ29yeVJldHJpZXZlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use coffeeMachineDestroyRequestDescriptor instead')
const CoffeeMachineDestroyRequest$json = {
  '1': 'CoffeeMachineDestroyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `CoffeeMachineDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineDestroyRequestDescriptor =
    $convert.base64Decode(
        'ChtDb2ZmZWVNYWNoaW5lRGVzdHJveVJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use coffeeMachineListRequestDescriptor instead')
const CoffeeMachineListRequest$json = {
  '1': 'CoffeeMachineListRequest',
};

/// Descriptor for `CoffeeMachineListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineListRequestDescriptor =
    $convert.base64Decode('ChhDb2ZmZWVNYWNoaW5lTGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use coffeeMachineListResponseDescriptor instead')
const CoffeeMachineListResponse$json = {
  '1': 'CoffeeMachineListResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.CoffeeMachineResponse',
      '10': 'results'
    },
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `CoffeeMachineListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineListResponseDescriptor = $convert.base64Decode(
    'ChlDb2ZmZWVNYWNoaW5lTGlzdFJlc3BvbnNlEk0KB3Jlc3VsdHMYASADKAsyMy5iYXNlX2FwcC'
    '5wcm9kdWN0c19jb250cm9sbGVyLkNvZmZlZU1hY2hpbmVSZXNwb25zZVIHcmVzdWx0cxIUCgVj'
    'b3VudBgCIAEoBVIFY291bnQ=');

@$core.Deprecated('Use coffeeMachinePartialUpdateRequestDescriptor instead')
const CoffeeMachinePartialUpdateRequest$json = {
  '1': 'CoffeeMachinePartialUpdateRequest',
  '2': [
    {
      '1': '_partial_update_fields',
      '3': 2,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status', '3': 4, '4': 1, '5': 5, '10': 'status'},
    {'1': 'heat', '3': 5, '4': 1, '5': 2, '10': 'heat'},
    {'1': 'water_level', '3': 6, '4': 1, '5': 5, '10': 'waterLevel'},
    {'1': 'used_water_level', '3': 7, '4': 1, '5': 5, '10': 'usedWaterLevel'},
    {'1': 'coffee_level', '3': 8, '4': 1, '5': 5, '10': 'coffeeLevel'},
    {'1': 'filter_position', '3': 9, '4': 1, '5': 8, '10': 'filterPosition'},
    {'1': 'mode_value', '3': 10, '4': 1, '5': 5, '10': 'modeValue'},
    {
      '1': 'categories',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.CategoryRequest',
      '10': 'categories'
    },
    {'1': 'id', '3': 12, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `CoffeeMachinePartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachinePartialUpdateRequestDescriptor = $convert.base64Decode(
    'CiFDb2ZmZWVNYWNoaW5lUGFydGlhbFVwZGF0ZVJlcXVlc3QSMwoWX3BhcnRpYWxfdXBkYXRlX2'
    'ZpZWxkcxgCIAMoCVITUGFydGlhbFVwZGF0ZUZpZWxkcxISCgRuYW1lGAMgASgJUgRuYW1lEhYK'
    'BnN0YXR1cxgEIAEoBVIGc3RhdHVzEhIKBGhlYXQYBSABKAJSBGhlYXQSHwoLd2F0ZXJfbGV2ZW'
    'wYBiABKAVSCndhdGVyTGV2ZWwSKAoQdXNlZF93YXRlcl9sZXZlbBgHIAEoBVIOdXNlZFdhdGVy'
    'TGV2ZWwSIQoMY29mZmVlX2xldmVsGAggASgFUgtjb2ZmZWVMZXZlbBInCg9maWx0ZXJfcG9zaX'
    'Rpb24YCSABKAhSDmZpbHRlclBvc2l0aW9uEh0KCm1vZGVfdmFsdWUYCiABKAVSCW1vZGVWYWx1'
    'ZRJNCgpjYXRlZ29yaWVzGAsgAygLMi0uYmFzZV9hcHAucHJvZHVjdHNfY29udHJvbGxlci5DYX'
    'RlZ29yeVJlcXVlc3RSCmNhdGVnb3JpZXMSDgoCaWQYDCABKAVSAmlk');

@$core.Deprecated('Use coffeeMachineRequestDescriptor instead')
const CoffeeMachineRequest$json = {
  '1': 'CoffeeMachineRequest',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status', '3': 3, '4': 1, '5': 5, '10': 'status'},
    {'1': 'heat', '3': 4, '4': 1, '5': 2, '10': 'heat'},
    {'1': 'water_level', '3': 5, '4': 1, '5': 5, '10': 'waterLevel'},
    {'1': 'used_water_level', '3': 6, '4': 1, '5': 5, '10': 'usedWaterLevel'},
    {'1': 'coffee_level', '3': 7, '4': 1, '5': 5, '10': 'coffeeLevel'},
    {'1': 'filter_position', '3': 8, '4': 1, '5': 8, '10': 'filterPosition'},
    {'1': 'mode_value', '3': 9, '4': 1, '5': 5, '10': 'modeValue'},
    {
      '1': 'categories',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.CategoryRequest',
      '10': 'categories'
    },
    {'1': 'id', '3': 11, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `CoffeeMachineRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineRequestDescriptor = $convert.base64Decode(
    'ChRDb2ZmZWVNYWNoaW5lUmVxdWVzdBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBnN0YXR1cxgDIA'
    'EoBVIGc3RhdHVzEhIKBGhlYXQYBCABKAJSBGhlYXQSHwoLd2F0ZXJfbGV2ZWwYBSABKAVSCndh'
    'dGVyTGV2ZWwSKAoQdXNlZF93YXRlcl9sZXZlbBgGIAEoBVIOdXNlZFdhdGVyTGV2ZWwSIQoMY2'
    '9mZmVlX2xldmVsGAcgASgFUgtjb2ZmZWVMZXZlbBInCg9maWx0ZXJfcG9zaXRpb24YCCABKAhS'
    'DmZpbHRlclBvc2l0aW9uEh0KCm1vZGVfdmFsdWUYCSABKAVSCW1vZGVWYWx1ZRJNCgpjYXRlZ2'
    '9yaWVzGAogAygLMi0uYmFzZV9hcHAucHJvZHVjdHNfY29udHJvbGxlci5DYXRlZ29yeVJlcXVl'
    'c3RSCmNhdGVnb3JpZXMSDgoCaWQYCyABKAVSAmlk');

@$core.Deprecated('Use coffeeMachineResponseDescriptor instead')
const CoffeeMachineResponse$json = {
  '1': 'CoffeeMachineResponse',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status', '3': 3, '4': 1, '5': 5, '10': 'status'},
    {'1': 'heat', '3': 4, '4': 1, '5': 2, '10': 'heat'},
    {'1': 'water_level', '3': 5, '4': 1, '5': 5, '10': 'waterLevel'},
    {'1': 'used_water_level', '3': 6, '4': 1, '5': 5, '10': 'usedWaterLevel'},
    {'1': 'coffee_level', '3': 7, '4': 1, '5': 5, '10': 'coffeeLevel'},
    {'1': 'filter_position', '3': 8, '4': 1, '5': 8, '10': 'filterPosition'},
    {'1': 'mode_value', '3': 9, '4': 1, '5': 5, '10': 'modeValue'},
    {
      '1': 'polymorphic_ctype',
      '3': 10,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'polymorphicCtype',
      '17': true
    },
    {
      '1': 'categories',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.CategoryResponse',
      '10': 'categories'
    },
    {'1': 'id', '3': 12, '4': 1, '5': 5, '10': 'id'},
  ],
  '8': [
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `CoffeeMachineResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineResponseDescriptor = $convert.base64Decode(
    'ChVDb2ZmZWVNYWNoaW5lUmVzcG9uc2USEgoEbmFtZRgCIAEoCVIEbmFtZRIWCgZzdGF0dXMYAy'
    'ABKAVSBnN0YXR1cxISCgRoZWF0GAQgASgCUgRoZWF0Eh8KC3dhdGVyX2xldmVsGAUgASgFUgp3'
    'YXRlckxldmVsEigKEHVzZWRfd2F0ZXJfbGV2ZWwYBiABKAVSDnVzZWRXYXRlckxldmVsEiEKDG'
    'NvZmZlZV9sZXZlbBgHIAEoBVILY29mZmVlTGV2ZWwSJwoPZmlsdGVyX3Bvc2l0aW9uGAggASgI'
    'Ug5maWx0ZXJQb3NpdGlvbhIdCgptb2RlX3ZhbHVlGAkgASgFUgltb2RlVmFsdWUSMAoRcG9seW'
    '1vcnBoaWNfY3R5cGUYCiABKAVIAFIQcG9seW1vcnBoaWNDdHlwZYgBARJOCgpjYXRlZ29yaWVz'
    'GAsgAygLMi4uYmFzZV9hcHAucHJvZHVjdHNfY29udHJvbGxlci5DYXRlZ29yeVJlc3BvbnNlUg'
    'pjYXRlZ29yaWVzEg4KAmlkGAwgASgFUgJpZEIUChJfcG9seW1vcnBoaWNfY3R5cGU=');

@$core.Deprecated('Use coffeeMachineRetrieveRequestDescriptor instead')
const CoffeeMachineRetrieveRequest$json = {
  '1': 'CoffeeMachineRetrieveRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `CoffeeMachineRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineRetrieveRequestDescriptor =
    $convert.base64Decode(
        'ChxDb2ZmZWVNYWNoaW5lUmV0cmlldmVSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use colorModeDestroyRequestDescriptor instead')
const ColorModeDestroyRequest$json = {
  '1': 'ColorModeDestroyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ColorModeDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorModeDestroyRequestDescriptor = $convert
    .base64Decode('ChdDb2xvck1vZGVEZXN0cm95UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use colorModeListRequestDescriptor instead')
const ColorModeListRequest$json = {
  '1': 'ColorModeListRequest',
};

/// Descriptor for `ColorModeListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorModeListRequestDescriptor =
    $convert.base64Decode('ChRDb2xvck1vZGVMaXN0UmVxdWVzdA==');

@$core.Deprecated('Use colorModeListResponseDescriptor instead')
const ColorModeListResponse$json = {
  '1': 'ColorModeListResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.ColorModeResponse',
      '10': 'results'
    },
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `ColorModeListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorModeListResponseDescriptor = $convert.base64Decode(
    'ChVDb2xvck1vZGVMaXN0UmVzcG9uc2USSQoHcmVzdWx0cxgBIAMoCzIvLmJhc2VfYXBwLnByb2'
    'R1Y3RzX2NvbnRyb2xsZXIuQ29sb3JNb2RlUmVzcG9uc2VSB3Jlc3VsdHMSFAoFY291bnQYAiAB'
    'KAVSBWNvdW50');

@$core.Deprecated('Use colorModePartialUpdateRequestDescriptor instead')
const ColorModePartialUpdateRequest$json = {
  '1': 'ColorModePartialUpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': '_partial_update_fields',
      '3': 3,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
    {'1': 'color', '3': 4, '4': 1, '5': 9, '10': 'color'},
  ],
};

/// Descriptor for `ColorModePartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorModePartialUpdateRequestDescriptor =
    $convert.base64Decode(
        'Ch1Db2xvck1vZGVQYXJ0aWFsVXBkYXRlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZR'
        'gCIAEoCVIEbmFtZRIzChZfcGFydGlhbF91cGRhdGVfZmllbGRzGAMgAygJUhNQYXJ0aWFsVXBk'
        'YXRlRmllbGRzEhQKBWNvbG9yGAQgASgJUgVjb2xvcg==');

@$core.Deprecated('Use colorModeRequestDescriptor instead')
const ColorModeRequest$json = {
  '1': 'ColorModeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '10': 'color'},
  ],
};

/// Descriptor for `ColorModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorModeRequestDescriptor = $convert.base64Decode(
    'ChBDb2xvck1vZGVSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh'
    'QKBWNvbG9yGAMgASgJUgVjb2xvcg==');

@$core.Deprecated('Use colorModeResponseDescriptor instead')
const ColorModeResponse$json = {
  '1': 'ColorModeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '10': 'color'},
    {
      '1': 'polymorphic_ctype',
      '3': 4,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'polymorphicCtype',
      '17': true
    },
  ],
  '8': [
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `ColorModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorModeResponseDescriptor = $convert.base64Decode(
    'ChFDb2xvck1vZGVSZXNwb25zZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'IUCgVjb2xvchgDIAEoCVIFY29sb3ISMAoRcG9seW1vcnBoaWNfY3R5cGUYBCABKAVIAFIQcG9s'
    'eW1vcnBoaWNDdHlwZYgBAUIUChJfcG9seW1vcnBoaWNfY3R5cGU=');

@$core.Deprecated('Use colorModeRetrieveRequestDescriptor instead')
const ColorModeRetrieveRequest$json = {
  '1': 'ColorModeRetrieveRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ColorModeRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorModeRetrieveRequestDescriptor = $convert
    .base64Decode('ChhDb2xvck1vZGVSZXRyaWV2ZVJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use imageModeDestroyRequestDescriptor instead')
const ImageModeDestroyRequest$json = {
  '1': 'ImageModeDestroyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ImageModeDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageModeDestroyRequestDescriptor = $convert
    .base64Decode('ChdJbWFnZU1vZGVEZXN0cm95UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use imageModeListRequestDescriptor instead')
const ImageModeListRequest$json = {
  '1': 'ImageModeListRequest',
};

/// Descriptor for `ImageModeListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageModeListRequestDescriptor =
    $convert.base64Decode('ChRJbWFnZU1vZGVMaXN0UmVxdWVzdA==');

@$core.Deprecated('Use imageModeListResponseDescriptor instead')
const ImageModeListResponse$json = {
  '1': 'ImageModeListResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.ImageModeResponse',
      '10': 'results'
    },
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `ImageModeListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageModeListResponseDescriptor = $convert.base64Decode(
    'ChVJbWFnZU1vZGVMaXN0UmVzcG9uc2USSQoHcmVzdWx0cxgBIAMoCzIvLmJhc2VfYXBwLnByb2'
    'R1Y3RzX2NvbnRyb2xsZXIuSW1hZ2VNb2RlUmVzcG9uc2VSB3Jlc3VsdHMSFAoFY291bnQYAiAB'
    'KAVSBWNvdW50');

@$core.Deprecated('Use imageModePartialUpdateRequestDescriptor instead')
const ImageModePartialUpdateRequest$json = {
  '1': 'ImageModePartialUpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': '_partial_update_fields',
      '3': 3,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
    {'1': 'image', '3': 4, '4': 1, '5': 9, '10': 'image'},
    {
      '1': 'image_low_pixel',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'imageLowPixel',
      '17': true
    },
  ],
  '8': [
    {'1': '_image_low_pixel'},
  ],
};

/// Descriptor for `ImageModePartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageModePartialUpdateRequestDescriptor = $convert.base64Decode(
    'Ch1JbWFnZU1vZGVQYXJ0aWFsVXBkYXRlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZR'
    'gCIAEoCVIEbmFtZRIzChZfcGFydGlhbF91cGRhdGVfZmllbGRzGAMgAygJUhNQYXJ0aWFsVXBk'
    'YXRlRmllbGRzEhQKBWltYWdlGAQgASgJUgVpbWFnZRIrCg9pbWFnZV9sb3dfcGl4ZWwYBSABKA'
    'lIAFINaW1hZ2VMb3dQaXhlbIgBAUISChBfaW1hZ2VfbG93X3BpeGVs');

@$core.Deprecated('Use imageModeRequestDescriptor instead')
const ImageModeRequest$json = {
  '1': 'ImageModeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {
      '1': 'image_low_pixel',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'imageLowPixel',
      '17': true
    },
  ],
  '8': [
    {'1': '_image_low_pixel'},
  ],
};

/// Descriptor for `ImageModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageModeRequestDescriptor = $convert.base64Decode(
    'ChBJbWFnZU1vZGVSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh'
    'QKBWltYWdlGAMgASgJUgVpbWFnZRIrCg9pbWFnZV9sb3dfcGl4ZWwYBCABKAlIAFINaW1hZ2VM'
    'b3dQaXhlbIgBAUISChBfaW1hZ2VfbG93X3BpeGVs');

@$core.Deprecated('Use imageModeResponseDescriptor instead')
const ImageModeResponse$json = {
  '1': 'ImageModeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {
      '1': 'image_low_pixel',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'imageLowPixel',
      '17': true
    },
    {
      '1': 'polymorphic_ctype',
      '3': 5,
      '4': 1,
      '5': 5,
      '9': 1,
      '10': 'polymorphicCtype',
      '17': true
    },
  ],
  '8': [
    {'1': '_image_low_pixel'},
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `ImageModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageModeResponseDescriptor = $convert.base64Decode(
    'ChFJbWFnZU1vZGVSZXNwb25zZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'IUCgVpbWFnZRgDIAEoCVIFaW1hZ2USKwoPaW1hZ2VfbG93X3BpeGVsGAQgASgJSABSDWltYWdl'
    'TG93UGl4ZWyIAQESMAoRcG9seW1vcnBoaWNfY3R5cGUYBSABKAVIAVIQcG9seW1vcnBoaWNDdH'
    'lwZYgBAUISChBfaW1hZ2VfbG93X3BpeGVsQhQKEl9wb2x5bW9ycGhpY19jdHlwZQ==');

@$core.Deprecated('Use imageModeRetrieveRequestDescriptor instead')
const ImageModeRetrieveRequest$json = {
  '1': 'ImageModeRetrieveRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ImageModeRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageModeRetrieveRequestDescriptor = $convert
    .base64Decode('ChhJbWFnZU1vZGVSZXRyaWV2ZVJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use ledPanelDestroyRequestDescriptor instead')
const LedPanelDestroyRequest$json = {
  '1': 'LedPanelDestroyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `LedPanelDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelDestroyRequestDescriptor = $convert
    .base64Decode('ChZMZWRQYW5lbERlc3Ryb3lSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use ledPanelListRequestDescriptor instead')
const LedPanelListRequest$json = {
  '1': 'LedPanelListRequest',
};

/// Descriptor for `LedPanelListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelListRequestDescriptor =
    $convert.base64Decode('ChNMZWRQYW5lbExpc3RSZXF1ZXN0');

@$core.Deprecated('Use ledPanelListResponseDescriptor instead')
const LedPanelListResponse$json = {
  '1': 'LedPanelListResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.LedPanelResponse',
      '10': 'results'
    },
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `LedPanelListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelListResponseDescriptor = $convert.base64Decode(
    'ChRMZWRQYW5lbExpc3RSZXNwb25zZRJICgdyZXN1bHRzGAEgAygLMi4uYmFzZV9hcHAucHJvZH'
    'VjdHNfY29udHJvbGxlci5MZWRQYW5lbFJlc3BvbnNlUgdyZXN1bHRzEhQKBWNvdW50GAIgASgF'
    'UgVjb3VudA==');

@$core.Deprecated('Use ledPanelPartialUpdateRequestDescriptor instead')
const LedPanelPartialUpdateRequest$json = {
  '1': 'LedPanelPartialUpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {
      '1': 'mode',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.LedModeRequest',
      '10': 'mode'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'categories',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.CategoryRequest',
      '10': 'categories'
    },
    {
      '1': '_partial_update_fields',
      '3': 5,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
    {'1': 'status', '3': 6, '4': 1, '5': 5, '10': 'status'},
    {'1': 'brightness', '3': 7, '4': 1, '5': 1, '10': 'brightness'},
  ],
};

/// Descriptor for `LedPanelPartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelPartialUpdateRequestDescriptor = $convert.base64Decode(
    'ChxMZWRQYW5lbFBhcnRpYWxVcGRhdGVSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBJACgRtb2RlGA'
    'IgASgLMiwuYmFzZV9hcHAucHJvZHVjdHNfY29udHJvbGxlci5MZWRNb2RlUmVxdWVzdFIEbW9k'
    'ZRISCgRuYW1lGAMgASgJUgRuYW1lEk0KCmNhdGVnb3JpZXMYBCADKAsyLS5iYXNlX2FwcC5wcm'
    '9kdWN0c19jb250cm9sbGVyLkNhdGVnb3J5UmVxdWVzdFIKY2F0ZWdvcmllcxIzChZfcGFydGlh'
    'bF91cGRhdGVfZmllbGRzGAUgAygJUhNQYXJ0aWFsVXBkYXRlRmllbGRzEhYKBnN0YXR1cxgGIA'
    'EoBVIGc3RhdHVzEh4KCmJyaWdodG5lc3MYByABKAFSCmJyaWdodG5lc3M=');

@$core.Deprecated('Use ledPanelRequestDescriptor instead')
const LedPanelRequest$json = {
  '1': 'LedPanelRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {
      '1': 'mode',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.LedModeRequest',
      '10': 'mode'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'categories',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.CategoryRequest',
      '10': 'categories'
    },
    {'1': 'status', '3': 5, '4': 1, '5': 5, '10': 'status'},
    {'1': 'brightness', '3': 6, '4': 1, '5': 1, '10': 'brightness'},
  ],
};

/// Descriptor for `LedPanelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelRequestDescriptor = $convert.base64Decode(
    'Cg9MZWRQYW5lbFJlcXVlc3QSDgoCaWQYASABKAVSAmlkEkAKBG1vZGUYAiABKAsyLC5iYXNlX2'
    'FwcC5wcm9kdWN0c19jb250cm9sbGVyLkxlZE1vZGVSZXF1ZXN0UgRtb2RlEhIKBG5hbWUYAyAB'
    'KAlSBG5hbWUSTQoKY2F0ZWdvcmllcxgEIAMoCzItLmJhc2VfYXBwLnByb2R1Y3RzX2NvbnRyb2'
    'xsZXIuQ2F0ZWdvcnlSZXF1ZXN0UgpjYXRlZ29yaWVzEhYKBnN0YXR1cxgFIAEoBVIGc3RhdHVz'
    'Eh4KCmJyaWdodG5lc3MYBiABKAFSCmJyaWdodG5lc3M=');

@$core.Deprecated('Use ledPanelResponseDescriptor instead')
const LedPanelResponse$json = {
  '1': 'LedPanelResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {
      '1': 'mode',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.LedModeResponse',
      '10': 'mode'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'categories',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.CategoryResponse',
      '10': 'categories'
    },
    {'1': 'status', '3': 5, '4': 1, '5': 5, '10': 'status'},
    {'1': 'brightness', '3': 6, '4': 1, '5': 1, '10': 'brightness'},
    {
      '1': 'polymorphic_ctype',
      '3': 7,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'polymorphicCtype',
      '17': true
    },
  ],
  '8': [
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `LedPanelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelResponseDescriptor = $convert.base64Decode(
    'ChBMZWRQYW5lbFJlc3BvbnNlEg4KAmlkGAEgASgFUgJpZBJBCgRtb2RlGAIgASgLMi0uYmFzZV'
    '9hcHAucHJvZHVjdHNfY29udHJvbGxlci5MZWRNb2RlUmVzcG9uc2VSBG1vZGUSEgoEbmFtZRgD'
    'IAEoCVIEbmFtZRJOCgpjYXRlZ29yaWVzGAQgAygLMi4uYmFzZV9hcHAucHJvZHVjdHNfY29udH'
    'JvbGxlci5DYXRlZ29yeVJlc3BvbnNlUgpjYXRlZ29yaWVzEhYKBnN0YXR1cxgFIAEoBVIGc3Rh'
    'dHVzEh4KCmJyaWdodG5lc3MYBiABKAFSCmJyaWdodG5lc3MSMAoRcG9seW1vcnBoaWNfY3R5cG'
    'UYByABKAVIAFIQcG9seW1vcnBoaWNDdHlwZYgBAUIUChJfcG9seW1vcnBoaWNfY3R5cGU=');

@$core.Deprecated('Use ledPanelRetrieveRequestDescriptor instead')
const LedPanelRetrieveRequest$json = {
  '1': 'LedPanelRetrieveRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `LedPanelRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelRetrieveRequestDescriptor = $convert
    .base64Decode('ChdMZWRQYW5lbFJldHJpZXZlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use patternModeDestroyRequestDescriptor instead')
const PatternModeDestroyRequest$json = {
  '1': 'PatternModeDestroyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `PatternModeDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternModeDestroyRequestDescriptor =
    $convert.base64Decode(
        'ChlQYXR0ZXJuTW9kZURlc3Ryb3lSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use patternModeListRequestDescriptor instead')
const PatternModeListRequest$json = {
  '1': 'PatternModeListRequest',
};

/// Descriptor for `PatternModeListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternModeListRequestDescriptor =
    $convert.base64Decode('ChZQYXR0ZXJuTW9kZUxpc3RSZXF1ZXN0');

@$core.Deprecated('Use patternModeListResponseDescriptor instead')
const PatternModeListResponse$json = {
  '1': 'PatternModeListResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.PatternModeResponse',
      '10': 'results'
    },
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `PatternModeListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternModeListResponseDescriptor = $convert.base64Decode(
    'ChdQYXR0ZXJuTW9kZUxpc3RSZXNwb25zZRJLCgdyZXN1bHRzGAEgAygLMjEuYmFzZV9hcHAucH'
    'JvZHVjdHNfY29udHJvbGxlci5QYXR0ZXJuTW9kZVJlc3BvbnNlUgdyZXN1bHRzEhQKBWNvdW50'
    'GAIgASgFUgVjb3VudA==');

@$core.Deprecated('Use patternModePartialUpdateRequestDescriptor instead')
const PatternModePartialUpdateRequest$json = {
  '1': 'PatternModePartialUpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': '_partial_update_fields',
      '3': 3,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
    {'1': 'fps', '3': 4, '4': 1, '5': 1, '10': 'fps'},
    {'1': 'blink', '3': 5, '4': 1, '5': 1, '10': 'blink'},
    {'1': 'palette', '3': 6, '4': 1, '5': 9, '10': 'palette'},
  ],
};

/// Descriptor for `PatternModePartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternModePartialUpdateRequestDescriptor =
    $convert.base64Decode(
        'Ch9QYXR0ZXJuTW9kZVBhcnRpYWxVcGRhdGVSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW'
        '1lGAIgASgJUgRuYW1lEjMKFl9wYXJ0aWFsX3VwZGF0ZV9maWVsZHMYAyADKAlSE1BhcnRpYWxV'
        'cGRhdGVGaWVsZHMSEAoDZnBzGAQgASgBUgNmcHMSFAoFYmxpbmsYBSABKAFSBWJsaW5rEhgKB3'
        'BhbGV0dGUYBiABKAlSB3BhbGV0dGU=');

@$core.Deprecated('Use patternModeRequestDescriptor instead')
const PatternModeRequest$json = {
  '1': 'PatternModeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'fps', '3': 3, '4': 1, '5': 1, '10': 'fps'},
    {'1': 'blink', '3': 4, '4': 1, '5': 1, '10': 'blink'},
    {'1': 'palette', '3': 5, '4': 1, '5': 9, '10': 'palette'},
  ],
};

/// Descriptor for `PatternModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternModeRequestDescriptor = $convert.base64Decode(
    'ChJQYXR0ZXJuTW9kZVJlcXVlc3QSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USEAoDZnBzGAMgASgBUgNmcHMSFAoFYmxpbmsYBCABKAFSBWJsaW5rEhgKB3BhbGV0dGUYBSAB'
    'KAlSB3BhbGV0dGU=');

@$core.Deprecated('Use patternModeResponseDescriptor instead')
const PatternModeResponse$json = {
  '1': 'PatternModeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'fps', '3': 3, '4': 1, '5': 1, '10': 'fps'},
    {'1': 'blink', '3': 4, '4': 1, '5': 1, '10': 'blink'},
    {'1': 'palette', '3': 5, '4': 1, '5': 9, '10': 'palette'},
    {
      '1': 'polymorphic_ctype',
      '3': 6,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'polymorphicCtype',
      '17': true
    },
  ],
  '8': [
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `PatternModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternModeResponseDescriptor = $convert.base64Decode(
    'ChNQYXR0ZXJuTW9kZVJlc3BvbnNlEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW'
    '1lEhAKA2ZwcxgDIAEoAVIDZnBzEhQKBWJsaW5rGAQgASgBUgVibGluaxIYCgdwYWxldHRlGAUg'
    'ASgJUgdwYWxldHRlEjAKEXBvbHltb3JwaGljX2N0eXBlGAYgASgFSABSEHBvbHltb3JwaGljQ3'
    'R5cGWIAQFCFAoSX3BvbHltb3JwaGljX2N0eXBl');

@$core.Deprecated('Use patternModeRetrieveRequestDescriptor instead')
const PatternModeRetrieveRequest$json = {
  '1': 'PatternModeRetrieveRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `PatternModeRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternModeRetrieveRequestDescriptor =
    $convert.base64Decode(
        'ChpQYXR0ZXJuTW9kZVJldHJpZXZlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use projectDestroyRequestDescriptor instead')
const ProjectDestroyRequest$json = {
  '1': 'ProjectDestroyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ProjectDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectDestroyRequestDescriptor = $convert
    .base64Decode('ChVQcm9qZWN0RGVzdHJveVJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use projectListRequestDescriptor instead')
const ProjectListRequest$json = {
  '1': 'ProjectListRequest',
};

/// Descriptor for `ProjectListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectListRequestDescriptor =
    $convert.base64Decode('ChJQcm9qZWN0TGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use projectListResponseDescriptor instead')
const ProjectListResponse$json = {
  '1': 'ProjectListResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.ProjectResponse',
      '10': 'results'
    },
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `ProjectListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectListResponseDescriptor = $convert.base64Decode(
    'ChNQcm9qZWN0TGlzdFJlc3BvbnNlEkcKB3Jlc3VsdHMYASADKAsyLS5iYXNlX2FwcC5wcm9kdW'
    'N0c19jb250cm9sbGVyLlByb2plY3RSZXNwb25zZVIHcmVzdWx0cxIUCgVjb3VudBgCIAEoBVIF'
    'Y291bnQ=');

@$core.Deprecated('Use projectPartialUpdateRequestDescriptor instead')
const ProjectPartialUpdateRequest$json = {
  '1': 'ProjectPartialUpdateRequest',
  '2': [
    {
      '1': 'products',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.BaseProductRequest',
      '10': 'products'
    },
    {
      '1': '_partial_update_fields',
      '3': 3,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
    {'1': 'pub_date', '3': 4, '4': 1, '5': 9, '10': 'pubDate'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'owner', '3': 6, '4': 1, '5': 5, '10': 'owner'},
    {'1': 'id', '3': 7, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ProjectPartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectPartialUpdateRequestDescriptor = $convert.base64Decode(
    'ChtQcm9qZWN0UGFydGlhbFVwZGF0ZVJlcXVlc3QSTAoIcHJvZHVjdHMYAiADKAsyMC5iYXNlX2'
    'FwcC5wcm9kdWN0c19jb250cm9sbGVyLkJhc2VQcm9kdWN0UmVxdWVzdFIIcHJvZHVjdHMSMwoW'
    'X3BhcnRpYWxfdXBkYXRlX2ZpZWxkcxgDIAMoCVITUGFydGlhbFVwZGF0ZUZpZWxkcxIZCghwdW'
    'JfZGF0ZRgEIAEoCVIHcHViRGF0ZRISCgRuYW1lGAUgASgJUgRuYW1lEhQKBW93bmVyGAYgASgF'
    'UgVvd25lchIOCgJpZBgHIAEoBVICaWQ=');

@$core.Deprecated('Use projectRequestDescriptor instead')
const ProjectRequest$json = {
  '1': 'ProjectRequest',
  '2': [
    {
      '1': 'products',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.BaseProductRequest',
      '10': 'products'
    },
    {'1': 'pub_date', '3': 3, '4': 1, '5': 9, '10': 'pubDate'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'owner', '3': 5, '4': 1, '5': 5, '10': 'owner'},
    {'1': 'id', '3': 6, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectRequestDescriptor = $convert.base64Decode(
    'Cg5Qcm9qZWN0UmVxdWVzdBJMCghwcm9kdWN0cxgCIAMoCzIwLmJhc2VfYXBwLnByb2R1Y3RzX2'
    'NvbnRyb2xsZXIuQmFzZVByb2R1Y3RSZXF1ZXN0Ughwcm9kdWN0cxIZCghwdWJfZGF0ZRgDIAEo'
    'CVIHcHViRGF0ZRISCgRuYW1lGAQgASgJUgRuYW1lEhQKBW93bmVyGAUgASgFUgVvd25lchIOCg'
    'JpZBgGIAEoBVICaWQ=');

@$core.Deprecated('Use projectResponseDescriptor instead')
const ProjectResponse$json = {
  '1': 'ProjectResponse',
  '2': [
    {
      '1': 'products',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.BaseProductResponse',
      '10': 'products'
    },
    {'1': 'pub_date', '3': 3, '4': 1, '5': 9, '10': 'pubDate'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'owner', '3': 5, '4': 1, '5': 5, '10': 'owner'},
    {'1': 'id', '3': 6, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ProjectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectResponseDescriptor = $convert.base64Decode(
    'Cg9Qcm9qZWN0UmVzcG9uc2USTQoIcHJvZHVjdHMYAiADKAsyMS5iYXNlX2FwcC5wcm9kdWN0c1'
    '9jb250cm9sbGVyLkJhc2VQcm9kdWN0UmVzcG9uc2VSCHByb2R1Y3RzEhkKCHB1Yl9kYXRlGAMg'
    'ASgJUgdwdWJEYXRlEhIKBG5hbWUYBCABKAlSBG5hbWUSFAoFb3duZXIYBSABKAVSBW93bmVyEg'
    '4KAmlkGAYgASgFUgJpZA==');

@$core.Deprecated('Use projectRetrieveRequestDescriptor instead')
const ProjectRetrieveRequest$json = {
  '1': 'ProjectRetrieveRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ProjectRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectRetrieveRequestDescriptor = $convert
    .base64Decode('ChZQcm9qZWN0UmV0cmlldmVSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use videoModeDestroyRequestDescriptor instead')
const VideoModeDestroyRequest$json = {
  '1': 'VideoModeDestroyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `VideoModeDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoModeDestroyRequestDescriptor = $convert
    .base64Decode('ChdWaWRlb01vZGVEZXN0cm95UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use videoModeListRequestDescriptor instead')
const VideoModeListRequest$json = {
  '1': 'VideoModeListRequest',
};

/// Descriptor for `VideoModeListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoModeListRequestDescriptor =
    $convert.base64Decode('ChRWaWRlb01vZGVMaXN0UmVxdWVzdA==');

@$core.Deprecated('Use videoModeListResponseDescriptor instead')
const VideoModeListResponse$json = {
  '1': 'VideoModeListResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.VideoModeResponse',
      '10': 'results'
    },
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `VideoModeListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoModeListResponseDescriptor = $convert.base64Decode(
    'ChVWaWRlb01vZGVMaXN0UmVzcG9uc2USSQoHcmVzdWx0cxgBIAMoCzIvLmJhc2VfYXBwLnByb2'
    'R1Y3RzX2NvbnRyb2xsZXIuVmlkZW9Nb2RlUmVzcG9uc2VSB3Jlc3VsdHMSFAoFY291bnQYAiAB'
    'KAVSBWNvdW50');

@$core.Deprecated('Use videoModePartialUpdateRequestDescriptor instead')
const VideoModePartialUpdateRequest$json = {
  '1': 'VideoModePartialUpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': '_partial_update_fields',
      '3': 3,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
    {'1': 'video', '3': 4, '4': 1, '5': 9, '10': 'video'},
    {
      '1': 'video_low_pixel',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'videoLowPixel',
      '17': true
    },
  ],
  '8': [
    {'1': '_video_low_pixel'},
  ],
};

/// Descriptor for `VideoModePartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoModePartialUpdateRequestDescriptor = $convert.base64Decode(
    'Ch1WaWRlb01vZGVQYXJ0aWFsVXBkYXRlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZR'
    'gCIAEoCVIEbmFtZRIzChZfcGFydGlhbF91cGRhdGVfZmllbGRzGAMgAygJUhNQYXJ0aWFsVXBk'
    'YXRlRmllbGRzEhQKBXZpZGVvGAQgASgJUgV2aWRlbxIrCg92aWRlb19sb3dfcGl4ZWwYBSABKA'
    'lIAFINdmlkZW9Mb3dQaXhlbIgBAUISChBfdmlkZW9fbG93X3BpeGVs');

@$core.Deprecated('Use videoModeRequestDescriptor instead')
const VideoModeRequest$json = {
  '1': 'VideoModeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'video', '3': 3, '4': 1, '5': 9, '10': 'video'},
    {
      '1': 'video_low_pixel',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'videoLowPixel',
      '17': true
    },
  ],
  '8': [
    {'1': '_video_low_pixel'},
  ],
};

/// Descriptor for `VideoModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoModeRequestDescriptor = $convert.base64Decode(
    'ChBWaWRlb01vZGVSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh'
    'QKBXZpZGVvGAMgASgJUgV2aWRlbxIrCg92aWRlb19sb3dfcGl4ZWwYBCABKAlIAFINdmlkZW9M'
    'b3dQaXhlbIgBAUISChBfdmlkZW9fbG93X3BpeGVs');

@$core.Deprecated('Use videoModeResponseDescriptor instead')
const VideoModeResponse$json = {
  '1': 'VideoModeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'video', '3': 3, '4': 1, '5': 9, '10': 'video'},
    {
      '1': 'video_low_pixel',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'videoLowPixel',
      '17': true
    },
    {
      '1': 'polymorphic_ctype',
      '3': 5,
      '4': 1,
      '5': 5,
      '9': 1,
      '10': 'polymorphicCtype',
      '17': true
    },
  ],
  '8': [
    {'1': '_video_low_pixel'},
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `VideoModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoModeResponseDescriptor = $convert.base64Decode(
    'ChFWaWRlb01vZGVSZXNwb25zZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'IUCgV2aWRlbxgDIAEoCVIFdmlkZW8SKwoPdmlkZW9fbG93X3BpeGVsGAQgASgJSABSDXZpZGVv'
    'TG93UGl4ZWyIAQESMAoRcG9seW1vcnBoaWNfY3R5cGUYBSABKAVIAVIQcG9seW1vcnBoaWNDdH'
    'lwZYgBAUISChBfdmlkZW9fbG93X3BpeGVsQhQKEl9wb2x5bW9ycGhpY19jdHlwZQ==');

@$core.Deprecated('Use videoModeRetrieveRequestDescriptor instead')
const VideoModeRetrieveRequest$json = {
  '1': 'VideoModeRetrieveRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `VideoModeRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoModeRetrieveRequestDescriptor = $convert
    .base64Decode('ChhWaWRlb01vZGVSZXRyaWV2ZVJlcXVlc3QSDgoCaWQYASABKAVSAmlk');
