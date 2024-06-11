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
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': '_partial_update_fields',
      '3': 3,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `CategoryPartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryPartialUpdateRequestDescriptor =
    $convert.base64Decode(
        'ChxDYXRlZ29yeVBhcnRpYWxVcGRhdGVSZXF1ZXN0EhMKAmlkGAEgASgFSABSAmlkiAEBEhIKBG'
        '5hbWUYAiABKAlSBG5hbWUSMwoWX3BhcnRpYWxfdXBkYXRlX2ZpZWxkcxgDIAMoCVITUGFydGlh'
        'bFVwZGF0ZUZpZWxkc0IFCgNfaWQ=');

@$core.Deprecated('Use categoryRequestDescriptor instead')
const CategoryRequest$json = {
  '1': 'CategoryRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `CategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryRequestDescriptor = $convert.base64Decode(
    'Cg9DYXRlZ29yeVJlcXVlc3QSEwoCaWQYASABKAVIAFICaWSIAQESEgoEbmFtZRgCIAEoCVIEbm'
    'FtZUIFCgNfaWQ=');

@$core.Deprecated('Use categoryResponseDescriptor instead')
const CategoryResponse$json = {
  '1': 'CategoryResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `CategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryResponseDescriptor = $convert.base64Decode(
    'ChBDYXRlZ29yeVJlc3BvbnNlEhMKAmlkGAEgASgFSABSAmlkiAEBEhIKBG5hbWUYAiABKAlSBG'
    '5hbWVCBQoDX2lk');

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
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'categories',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.CategoryRequest',
      '10': 'categories'
    },
    {
      '1': '_partial_update_fields',
      '3': 4,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
    {'1': 'status', '3': 5, '4': 1, '5': 5, '10': 'status'},
    {'1': 'heat', '3': 6, '4': 1, '5': 2, '9': 1, '10': 'heat', '17': true},
    {
      '1': 'water_level',
      '3': 7,
      '4': 1,
      '5': 5,
      '9': 2,
      '10': 'waterLevel',
      '17': true
    },
    {
      '1': 'used_water_level',
      '3': 8,
      '4': 1,
      '5': 5,
      '9': 3,
      '10': 'usedWaterLevel',
      '17': true
    },
    {
      '1': 'coffee_level',
      '3': 9,
      '4': 1,
      '5': 5,
      '9': 4,
      '10': 'coffeeLevel',
      '17': true
    },
    {
      '1': 'filter_position',
      '3': 10,
      '4': 1,
      '5': 8,
      '9': 5,
      '10': 'filterPosition',
      '17': true
    },
    {
      '1': 'mode_value',
      '3': 11,
      '4': 1,
      '5': 5,
      '9': 6,
      '10': 'modeValue',
      '17': true
    },
    {'1': 'ip_address', '3': 12, '4': 1, '5': 9, '10': 'ipAddress'},
    {
      '1': 'ip_port',
      '3': 13,
      '4': 1,
      '5': 5,
      '9': 7,
      '10': 'ipPort',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_heat'},
    {'1': '_water_level'},
    {'1': '_used_water_level'},
    {'1': '_coffee_level'},
    {'1': '_filter_position'},
    {'1': '_mode_value'},
    {'1': '_ip_port'},
  ],
};

/// Descriptor for `CoffeeMachinePartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachinePartialUpdateRequestDescriptor = $convert.base64Decode(
    'CiFDb2ZmZWVNYWNoaW5lUGFydGlhbFVwZGF0ZVJlcXVlc3QSEwoCaWQYASABKAVIAFICaWSIAQ'
    'ESEgoEbmFtZRgCIAEoCVIEbmFtZRJNCgpjYXRlZ29yaWVzGAMgAygLMi0uYmFzZV9hcHAucHJv'
    'ZHVjdHNfY29udHJvbGxlci5DYXRlZ29yeVJlcXVlc3RSCmNhdGVnb3JpZXMSMwoWX3BhcnRpYW'
    'xfdXBkYXRlX2ZpZWxkcxgEIAMoCVITUGFydGlhbFVwZGF0ZUZpZWxkcxIWCgZzdGF0dXMYBSAB'
    'KAVSBnN0YXR1cxIXCgRoZWF0GAYgASgCSAFSBGhlYXSIAQESJAoLd2F0ZXJfbGV2ZWwYByABKA'
    'VIAlIKd2F0ZXJMZXZlbIgBARItChB1c2VkX3dhdGVyX2xldmVsGAggASgFSANSDnVzZWRXYXRl'
    'ckxldmVsiAEBEiYKDGNvZmZlZV9sZXZlbBgJIAEoBUgEUgtjb2ZmZWVMZXZlbIgBARIsCg9maW'
    'x0ZXJfcG9zaXRpb24YCiABKAhIBVIOZmlsdGVyUG9zaXRpb26IAQESIgoKbW9kZV92YWx1ZRgL'
    'IAEoBUgGUgltb2RlVmFsdWWIAQESHQoKaXBfYWRkcmVzcxgMIAEoCVIJaXBBZGRyZXNzEhwKB2'
    'lwX3BvcnQYDSABKAVIB1IGaXBQb3J0iAEBQgUKA19pZEIHCgVfaGVhdEIOCgxfd2F0ZXJfbGV2'
    'ZWxCEwoRX3VzZWRfd2F0ZXJfbGV2ZWxCDwoNX2NvZmZlZV9sZXZlbEISChBfZmlsdGVyX3Bvc2'
    'l0aW9uQg0KC19tb2RlX3ZhbHVlQgoKCF9pcF9wb3J0');

@$core.Deprecated('Use coffeeMachineRequestDescriptor instead')
const CoffeeMachineRequest$json = {
  '1': 'CoffeeMachineRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'categories',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.CategoryRequest',
      '10': 'categories'
    },
    {'1': 'status', '3': 4, '4': 1, '5': 5, '10': 'status'},
    {'1': 'heat', '3': 5, '4': 1, '5': 2, '9': 1, '10': 'heat', '17': true},
    {
      '1': 'water_level',
      '3': 6,
      '4': 1,
      '5': 5,
      '9': 2,
      '10': 'waterLevel',
      '17': true
    },
    {
      '1': 'used_water_level',
      '3': 7,
      '4': 1,
      '5': 5,
      '9': 3,
      '10': 'usedWaterLevel',
      '17': true
    },
    {
      '1': 'coffee_level',
      '3': 8,
      '4': 1,
      '5': 5,
      '9': 4,
      '10': 'coffeeLevel',
      '17': true
    },
    {
      '1': 'filter_position',
      '3': 9,
      '4': 1,
      '5': 8,
      '9': 5,
      '10': 'filterPosition',
      '17': true
    },
    {
      '1': 'mode_value',
      '3': 10,
      '4': 1,
      '5': 5,
      '9': 6,
      '10': 'modeValue',
      '17': true
    },
    {'1': 'ip_address', '3': 11, '4': 1, '5': 9, '10': 'ipAddress'},
    {
      '1': 'ip_port',
      '3': 12,
      '4': 1,
      '5': 5,
      '9': 7,
      '10': 'ipPort',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_heat'},
    {'1': '_water_level'},
    {'1': '_used_water_level'},
    {'1': '_coffee_level'},
    {'1': '_filter_position'},
    {'1': '_mode_value'},
    {'1': '_ip_port'},
  ],
};

/// Descriptor for `CoffeeMachineRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineRequestDescriptor = $convert.base64Decode(
    'ChRDb2ZmZWVNYWNoaW5lUmVxdWVzdBITCgJpZBgBIAEoBUgAUgJpZIgBARISCgRuYW1lGAIgAS'
    'gJUgRuYW1lEk0KCmNhdGVnb3JpZXMYAyADKAsyLS5iYXNlX2FwcC5wcm9kdWN0c19jb250cm9s'
    'bGVyLkNhdGVnb3J5UmVxdWVzdFIKY2F0ZWdvcmllcxIWCgZzdGF0dXMYBCABKAVSBnN0YXR1cx'
    'IXCgRoZWF0GAUgASgCSAFSBGhlYXSIAQESJAoLd2F0ZXJfbGV2ZWwYBiABKAVIAlIKd2F0ZXJM'
    'ZXZlbIgBARItChB1c2VkX3dhdGVyX2xldmVsGAcgASgFSANSDnVzZWRXYXRlckxldmVsiAEBEi'
    'YKDGNvZmZlZV9sZXZlbBgIIAEoBUgEUgtjb2ZmZWVMZXZlbIgBARIsCg9maWx0ZXJfcG9zaXRp'
    'b24YCSABKAhIBVIOZmlsdGVyUG9zaXRpb26IAQESIgoKbW9kZV92YWx1ZRgKIAEoBUgGUgltb2'
    'RlVmFsdWWIAQESHQoKaXBfYWRkcmVzcxgLIAEoCVIJaXBBZGRyZXNzEhwKB2lwX3BvcnQYDCAB'
    'KAVIB1IGaXBQb3J0iAEBQgUKA19pZEIHCgVfaGVhdEIOCgxfd2F0ZXJfbGV2ZWxCEwoRX3VzZW'
    'Rfd2F0ZXJfbGV2ZWxCDwoNX2NvZmZlZV9sZXZlbEISChBfZmlsdGVyX3Bvc2l0aW9uQg0KC19t'
    'b2RlX3ZhbHVlQgoKCF9pcF9wb3J0');

@$core.Deprecated('Use coffeeMachineResponseDescriptor instead')
const CoffeeMachineResponse$json = {
  '1': 'CoffeeMachineResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'categories',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.CategoryResponse',
      '10': 'categories'
    },
    {'1': 'status', '3': 4, '4': 1, '5': 5, '10': 'status'},
    {'1': 'heat', '3': 5, '4': 1, '5': 2, '9': 1, '10': 'heat', '17': true},
    {
      '1': 'water_level',
      '3': 6,
      '4': 1,
      '5': 5,
      '9': 2,
      '10': 'waterLevel',
      '17': true
    },
    {
      '1': 'used_water_level',
      '3': 7,
      '4': 1,
      '5': 5,
      '9': 3,
      '10': 'usedWaterLevel',
      '17': true
    },
    {
      '1': 'coffee_level',
      '3': 8,
      '4': 1,
      '5': 5,
      '9': 4,
      '10': 'coffeeLevel',
      '17': true
    },
    {
      '1': 'filter_position',
      '3': 9,
      '4': 1,
      '5': 8,
      '9': 5,
      '10': 'filterPosition',
      '17': true
    },
    {
      '1': 'mode_value',
      '3': 10,
      '4': 1,
      '5': 5,
      '9': 6,
      '10': 'modeValue',
      '17': true
    },
    {
      '1': 'polymorphic_ctype',
      '3': 11,
      '4': 1,
      '5': 5,
      '9': 7,
      '10': 'polymorphicCtype',
      '17': true
    },
    {'1': 'ip_address', '3': 12, '4': 1, '5': 9, '10': 'ipAddress'},
    {
      '1': 'ip_port',
      '3': 13,
      '4': 1,
      '5': 5,
      '9': 8,
      '10': 'ipPort',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_heat'},
    {'1': '_water_level'},
    {'1': '_used_water_level'},
    {'1': '_coffee_level'},
    {'1': '_filter_position'},
    {'1': '_mode_value'},
    {'1': '_polymorphic_ctype'},
    {'1': '_ip_port'},
  ],
};

/// Descriptor for `CoffeeMachineResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineResponseDescriptor = $convert.base64Decode(
    'ChVDb2ZmZWVNYWNoaW5lUmVzcG9uc2USEwoCaWQYASABKAVIAFICaWSIAQESEgoEbmFtZRgCIA'
    'EoCVIEbmFtZRJOCgpjYXRlZ29yaWVzGAMgAygLMi4uYmFzZV9hcHAucHJvZHVjdHNfY29udHJv'
    'bGxlci5DYXRlZ29yeVJlc3BvbnNlUgpjYXRlZ29yaWVzEhYKBnN0YXR1cxgEIAEoBVIGc3RhdH'
    'VzEhcKBGhlYXQYBSABKAJIAVIEaGVhdIgBARIkCgt3YXRlcl9sZXZlbBgGIAEoBUgCUgp3YXRl'
    'ckxldmVsiAEBEi0KEHVzZWRfd2F0ZXJfbGV2ZWwYByABKAVIA1IOdXNlZFdhdGVyTGV2ZWyIAQ'
    'ESJgoMY29mZmVlX2xldmVsGAggASgFSARSC2NvZmZlZUxldmVsiAEBEiwKD2ZpbHRlcl9wb3Np'
    'dGlvbhgJIAEoCEgFUg5maWx0ZXJQb3NpdGlvbogBARIiCgptb2RlX3ZhbHVlGAogASgFSAZSCW'
    '1vZGVWYWx1ZYgBARIwChFwb2x5bW9ycGhpY19jdHlwZRgLIAEoBUgHUhBwb2x5bW9ycGhpY0N0'
    'eXBliAEBEh0KCmlwX2FkZHJlc3MYDCABKAlSCWlwQWRkcmVzcxIcCgdpcF9wb3J0GA0gASgFSA'
    'hSBmlwUG9ydIgBAUIFCgNfaWRCBwoFX2hlYXRCDgoMX3dhdGVyX2xldmVsQhMKEV91c2VkX3dh'
    'dGVyX2xldmVsQg8KDV9jb2ZmZWVfbGV2ZWxCEgoQX2ZpbHRlcl9wb3NpdGlvbkINCgtfbW9kZV'
    '92YWx1ZUIUChJfcG9seW1vcnBoaWNfY3R5cGVCCgoIX2lwX3BvcnQ=');

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
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': '_partial_update_fields',
      '3': 3,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
    {'1': 'color', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'color', '17': true},
  ],
  '8': [
    {'1': '_id'},
    {'1': '_color'},
  ],
};

/// Descriptor for `ColorModePartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorModePartialUpdateRequestDescriptor = $convert.base64Decode(
    'Ch1Db2xvck1vZGVQYXJ0aWFsVXBkYXRlUmVxdWVzdBITCgJpZBgBIAEoBUgAUgJpZIgBARISCg'
    'RuYW1lGAIgASgJUgRuYW1lEjMKFl9wYXJ0aWFsX3VwZGF0ZV9maWVsZHMYAyADKAlSE1BhcnRp'
    'YWxVcGRhdGVGaWVsZHMSGQoFY29sb3IYBCABKAlIAVIFY29sb3KIAQFCBQoDX2lkQggKBl9jb2'
    'xvcg==');

@$core.Deprecated('Use colorModeRequestDescriptor instead')
const ColorModeRequest$json = {
  '1': 'ColorModeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'color', '17': true},
  ],
  '8': [
    {'1': '_id'},
    {'1': '_color'},
  ],
};

/// Descriptor for `ColorModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorModeRequestDescriptor = $convert.base64Decode(
    'ChBDb2xvck1vZGVSZXF1ZXN0EhMKAmlkGAEgASgFSABSAmlkiAEBEhIKBG5hbWUYAiABKAlSBG'
    '5hbWUSGQoFY29sb3IYAyABKAlIAVIFY29sb3KIAQFCBQoDX2lkQggKBl9jb2xvcg==');

@$core.Deprecated('Use colorModeResponseDescriptor instead')
const ColorModeResponse$json = {
  '1': 'ColorModeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'color', '17': true},
    {
      '1': 'polymorphic_ctype',
      '3': 4,
      '4': 1,
      '5': 5,
      '9': 2,
      '10': 'polymorphicCtype',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_color'},
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `ColorModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorModeResponseDescriptor = $convert.base64Decode(
    'ChFDb2xvck1vZGVSZXNwb25zZRITCgJpZBgBIAEoBUgAUgJpZIgBARISCgRuYW1lGAIgASgJUg'
    'RuYW1lEhkKBWNvbG9yGAMgASgJSAFSBWNvbG9yiAEBEjAKEXBvbHltb3JwaGljX2N0eXBlGAQg'
    'ASgFSAJSEHBvbHltb3JwaGljQ3R5cGWIAQFCBQoDX2lkQggKBl9jb2xvckIUChJfcG9seW1vcn'
    'BoaWNfY3R5cGU=');

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
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
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
      '9': 1,
      '10': 'imageLowPixel',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_image_low_pixel'},
  ],
};

/// Descriptor for `ImageModePartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageModePartialUpdateRequestDescriptor = $convert.base64Decode(
    'Ch1JbWFnZU1vZGVQYXJ0aWFsVXBkYXRlUmVxdWVzdBITCgJpZBgBIAEoBUgAUgJpZIgBARISCg'
    'RuYW1lGAIgASgJUgRuYW1lEjMKFl9wYXJ0aWFsX3VwZGF0ZV9maWVsZHMYAyADKAlSE1BhcnRp'
    'YWxVcGRhdGVGaWVsZHMSFAoFaW1hZ2UYBCABKAlSBWltYWdlEisKD2ltYWdlX2xvd19waXhlbB'
    'gFIAEoCUgBUg1pbWFnZUxvd1BpeGVsiAEBQgUKA19pZEISChBfaW1hZ2VfbG93X3BpeGVs');

@$core.Deprecated('Use imageModeRequestDescriptor instead')
const ImageModeRequest$json = {
  '1': 'ImageModeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {
      '1': 'image_low_pixel',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'imageLowPixel',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_image_low_pixel'},
  ],
};

/// Descriptor for `ImageModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageModeRequestDescriptor = $convert.base64Decode(
    'ChBJbWFnZU1vZGVSZXF1ZXN0EhMKAmlkGAEgASgFSABSAmlkiAEBEhIKBG5hbWUYAiABKAlSBG'
    '5hbWUSFAoFaW1hZ2UYAyABKAlSBWltYWdlEisKD2ltYWdlX2xvd19waXhlbBgEIAEoCUgBUg1p'
    'bWFnZUxvd1BpeGVsiAEBQgUKA19pZEISChBfaW1hZ2VfbG93X3BpeGVs');

@$core.Deprecated('Use imageModeResponseDescriptor instead')
const ImageModeResponse$json = {
  '1': 'ImageModeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {
      '1': 'image_low_pixel',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'imageLowPixel',
      '17': true
    },
    {
      '1': 'polymorphic_ctype',
      '3': 5,
      '4': 1,
      '5': 5,
      '9': 2,
      '10': 'polymorphicCtype',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_image_low_pixel'},
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `ImageModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageModeResponseDescriptor = $convert.base64Decode(
    'ChFJbWFnZU1vZGVSZXNwb25zZRITCgJpZBgBIAEoBUgAUgJpZIgBARISCgRuYW1lGAIgASgJUg'
    'RuYW1lEhQKBWltYWdlGAMgASgJUgVpbWFnZRIrCg9pbWFnZV9sb3dfcGl4ZWwYBCABKAlIAVIN'
    'aW1hZ2VMb3dQaXhlbIgBARIwChFwb2x5bW9ycGhpY19jdHlwZRgFIAEoBUgCUhBwb2x5bW9ycG'
    'hpY0N0eXBliAEBQgUKA19pZEISChBfaW1hZ2VfbG93X3BpeGVsQhQKEl9wb2x5bW9ycGhpY19j'
    'dHlwZQ==');

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
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
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
    {
      '1': 'brightness',
      '3': 7,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'brightness',
      '17': true
    },
    {'1': 'ip_address', '3': 8, '4': 1, '5': 9, '10': 'ipAddress'},
    {
      '1': 'ip_port',
      '3': 9,
      '4': 1,
      '5': 5,
      '9': 2,
      '10': 'ipPort',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_brightness'},
    {'1': '_ip_port'},
  ],
};

/// Descriptor for `LedPanelPartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelPartialUpdateRequestDescriptor = $convert.base64Decode(
    'ChxMZWRQYW5lbFBhcnRpYWxVcGRhdGVSZXF1ZXN0EhMKAmlkGAEgASgFSABSAmlkiAEBEkAKBG'
    '1vZGUYAiABKAsyLC5iYXNlX2FwcC5wcm9kdWN0c19jb250cm9sbGVyLkxlZE1vZGVSZXF1ZXN0'
    'UgRtb2RlEhIKBG5hbWUYAyABKAlSBG5hbWUSTQoKY2F0ZWdvcmllcxgEIAMoCzItLmJhc2VfYX'
    'BwLnByb2R1Y3RzX2NvbnRyb2xsZXIuQ2F0ZWdvcnlSZXF1ZXN0UgpjYXRlZ29yaWVzEjMKFl9w'
    'YXJ0aWFsX3VwZGF0ZV9maWVsZHMYBSADKAlSE1BhcnRpYWxVcGRhdGVGaWVsZHMSFgoGc3RhdH'
    'VzGAYgASgFUgZzdGF0dXMSIwoKYnJpZ2h0bmVzcxgHIAEoAUgBUgpicmlnaHRuZXNziAEBEh0K'
    'CmlwX2FkZHJlc3MYCCABKAlSCWlwQWRkcmVzcxIcCgdpcF9wb3J0GAkgASgFSAJSBmlwUG9ydI'
    'gBAUIFCgNfaWRCDQoLX2JyaWdodG5lc3NCCgoIX2lwX3BvcnQ=');

@$core.Deprecated('Use ledPanelRequestDescriptor instead')
const LedPanelRequest$json = {
  '1': 'LedPanelRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
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
    {
      '1': 'brightness',
      '3': 6,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'brightness',
      '17': true
    },
    {'1': 'ip_address', '3': 7, '4': 1, '5': 9, '10': 'ipAddress'},
    {
      '1': 'ip_port',
      '3': 8,
      '4': 1,
      '5': 5,
      '9': 2,
      '10': 'ipPort',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_brightness'},
    {'1': '_ip_port'},
  ],
};

/// Descriptor for `LedPanelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelRequestDescriptor = $convert.base64Decode(
    'Cg9MZWRQYW5lbFJlcXVlc3QSEwoCaWQYASABKAVIAFICaWSIAQESQAoEbW9kZRgCIAEoCzIsLm'
    'Jhc2VfYXBwLnByb2R1Y3RzX2NvbnRyb2xsZXIuTGVkTW9kZVJlcXVlc3RSBG1vZGUSEgoEbmFt'
    'ZRgDIAEoCVIEbmFtZRJNCgpjYXRlZ29yaWVzGAQgAygLMi0uYmFzZV9hcHAucHJvZHVjdHNfY2'
    '9udHJvbGxlci5DYXRlZ29yeVJlcXVlc3RSCmNhdGVnb3JpZXMSFgoGc3RhdHVzGAUgASgFUgZz'
    'dGF0dXMSIwoKYnJpZ2h0bmVzcxgGIAEoAUgBUgpicmlnaHRuZXNziAEBEh0KCmlwX2FkZHJlc3'
    'MYByABKAlSCWlwQWRkcmVzcxIcCgdpcF9wb3J0GAggASgFSAJSBmlwUG9ydIgBAUIFCgNfaWRC'
    'DQoLX2JyaWdodG5lc3NCCgoIX2lwX3BvcnQ=');

@$core.Deprecated('Use ledPanelResponseDescriptor instead')
const LedPanelResponse$json = {
  '1': 'LedPanelResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
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
    {
      '1': 'brightness',
      '3': 6,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'brightness',
      '17': true
    },
    {
      '1': 'polymorphic_ctype',
      '3': 7,
      '4': 1,
      '5': 5,
      '9': 2,
      '10': 'polymorphicCtype',
      '17': true
    },
    {'1': 'ip_address', '3': 8, '4': 1, '5': 9, '10': 'ipAddress'},
    {
      '1': 'ip_port',
      '3': 9,
      '4': 1,
      '5': 5,
      '9': 3,
      '10': 'ipPort',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_brightness'},
    {'1': '_polymorphic_ctype'},
    {'1': '_ip_port'},
  ],
};

/// Descriptor for `LedPanelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelResponseDescriptor = $convert.base64Decode(
    'ChBMZWRQYW5lbFJlc3BvbnNlEhMKAmlkGAEgASgFSABSAmlkiAEBEkEKBG1vZGUYAiABKAsyLS'
    '5iYXNlX2FwcC5wcm9kdWN0c19jb250cm9sbGVyLkxlZE1vZGVSZXNwb25zZVIEbW9kZRISCgRu'
    'YW1lGAMgASgJUgRuYW1lEk4KCmNhdGVnb3JpZXMYBCADKAsyLi5iYXNlX2FwcC5wcm9kdWN0c1'
    '9jb250cm9sbGVyLkNhdGVnb3J5UmVzcG9uc2VSCmNhdGVnb3JpZXMSFgoGc3RhdHVzGAUgASgF'
    'UgZzdGF0dXMSIwoKYnJpZ2h0bmVzcxgGIAEoAUgBUgpicmlnaHRuZXNziAEBEjAKEXBvbHltb3'
    'JwaGljX2N0eXBlGAcgASgFSAJSEHBvbHltb3JwaGljQ3R5cGWIAQESHQoKaXBfYWRkcmVzcxgI'
    'IAEoCVIJaXBBZGRyZXNzEhwKB2lwX3BvcnQYCSABKAVIA1IGaXBQb3J0iAEBQgUKA19pZEINCg'
    'tfYnJpZ2h0bmVzc0IUChJfcG9seW1vcnBoaWNfY3R5cGVCCgoIX2lwX3BvcnQ=');

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
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
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
    {'1': 'palette', '3': 6, '4': 3, '5': 9, '10': 'palette'},
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `PatternModePartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternModePartialUpdateRequestDescriptor =
    $convert.base64Decode(
        'Ch9QYXR0ZXJuTW9kZVBhcnRpYWxVcGRhdGVSZXF1ZXN0EhMKAmlkGAEgASgFSABSAmlkiAEBEh'
        'IKBG5hbWUYAiABKAlSBG5hbWUSMwoWX3BhcnRpYWxfdXBkYXRlX2ZpZWxkcxgDIAMoCVITUGFy'
        'dGlhbFVwZGF0ZUZpZWxkcxIQCgNmcHMYBCABKAFSA2ZwcxIUCgVibGluaxgFIAEoAVIFYmxpbm'
        'sSGAoHcGFsZXR0ZRgGIAMoCVIHcGFsZXR0ZUIFCgNfaWQ=');

@$core.Deprecated('Use patternModeRequestDescriptor instead')
const PatternModeRequest$json = {
  '1': 'PatternModeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'fps', '3': 3, '4': 1, '5': 1, '10': 'fps'},
    {'1': 'blink', '3': 4, '4': 1, '5': 1, '10': 'blink'},
    {'1': 'palette', '3': 5, '4': 3, '5': 9, '10': 'palette'},
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `PatternModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternModeRequestDescriptor = $convert.base64Decode(
    'ChJQYXR0ZXJuTW9kZVJlcXVlc3QSEwoCaWQYASABKAVIAFICaWSIAQESEgoEbmFtZRgCIAEoCV'
    'IEbmFtZRIQCgNmcHMYAyABKAFSA2ZwcxIUCgVibGluaxgEIAEoAVIFYmxpbmsSGAoHcGFsZXR0'
    'ZRgFIAMoCVIHcGFsZXR0ZUIFCgNfaWQ=');

@$core.Deprecated('Use patternModeResponseDescriptor instead')
const PatternModeResponse$json = {
  '1': 'PatternModeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'fps', '3': 3, '4': 1, '5': 1, '10': 'fps'},
    {'1': 'blink', '3': 4, '4': 1, '5': 1, '10': 'blink'},
    {'1': 'palette', '3': 5, '4': 3, '5': 9, '10': 'palette'},
    {
      '1': 'polymorphic_ctype',
      '3': 6,
      '4': 1,
      '5': 5,
      '9': 1,
      '10': 'polymorphicCtype',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `PatternModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternModeResponseDescriptor = $convert.base64Decode(
    'ChNQYXR0ZXJuTW9kZVJlc3BvbnNlEhMKAmlkGAEgASgFSABSAmlkiAEBEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUSEAoDZnBzGAMgASgBUgNmcHMSFAoFYmxpbmsYBCABKAFSBWJsaW5rEhgKB3BhbGV0'
    'dGUYBSADKAlSB3BhbGV0dGUSMAoRcG9seW1vcnBoaWNfY3R5cGUYBiABKAVIAVIQcG9seW1vcn'
    'BoaWNDdHlwZYgBAUIFCgNfaWRCFAoSX3BvbHltb3JwaGljX2N0eXBl');

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
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
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
    {
      '1': 'owner',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.UserRequest',
      '10': 'owner'
    },
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `ProjectPartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectPartialUpdateRequestDescriptor = $convert.base64Decode(
    'ChtQcm9qZWN0UGFydGlhbFVwZGF0ZVJlcXVlc3QSEwoCaWQYASABKAVIAFICaWSIAQESTAoIcH'
    'JvZHVjdHMYAiADKAsyMC5iYXNlX2FwcC5wcm9kdWN0c19jb250cm9sbGVyLkJhc2VQcm9kdWN0'
    'UmVxdWVzdFIIcHJvZHVjdHMSMwoWX3BhcnRpYWxfdXBkYXRlX2ZpZWxkcxgDIAMoCVITUGFydG'
    'lhbFVwZGF0ZUZpZWxkcxIZCghwdWJfZGF0ZRgEIAEoCVIHcHViRGF0ZRISCgRuYW1lGAUgASgJ'
    'UgRuYW1lEj8KBW93bmVyGAYgASgLMikuYmFzZV9hcHAucHJvZHVjdHNfY29udHJvbGxlci5Vc2'
    'VyUmVxdWVzdFIFb3duZXJCBQoDX2lk');

@$core.Deprecated('Use projectRequestDescriptor instead')
const ProjectRequest$json = {
  '1': 'ProjectRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
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
    {
      '1': 'owner',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.UserRequest',
      '10': 'owner'
    },
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `ProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectRequestDescriptor = $convert.base64Decode(
    'Cg5Qcm9qZWN0UmVxdWVzdBITCgJpZBgBIAEoBUgAUgJpZIgBARJMCghwcm9kdWN0cxgCIAMoCz'
    'IwLmJhc2VfYXBwLnByb2R1Y3RzX2NvbnRyb2xsZXIuQmFzZVByb2R1Y3RSZXF1ZXN0Ughwcm9k'
    'dWN0cxIZCghwdWJfZGF0ZRgDIAEoCVIHcHViRGF0ZRISCgRuYW1lGAQgASgJUgRuYW1lEj8KBW'
    '93bmVyGAUgASgLMikuYmFzZV9hcHAucHJvZHVjdHNfY29udHJvbGxlci5Vc2VyUmVxdWVzdFIF'
    'b3duZXJCBQoDX2lk');

@$core.Deprecated('Use projectResponseDescriptor instead')
const ProjectResponse$json = {
  '1': 'ProjectResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
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
    {
      '1': 'owner',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.base_app.products_controller.UserResponse',
      '10': 'owner'
    },
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `ProjectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectResponseDescriptor = $convert.base64Decode(
    'Cg9Qcm9qZWN0UmVzcG9uc2USEwoCaWQYASABKAVIAFICaWSIAQESTQoIcHJvZHVjdHMYAiADKA'
    'syMS5iYXNlX2FwcC5wcm9kdWN0c19jb250cm9sbGVyLkJhc2VQcm9kdWN0UmVzcG9uc2VSCHBy'
    'b2R1Y3RzEhkKCHB1Yl9kYXRlGAMgASgJUgdwdWJEYXRlEhIKBG5hbWUYBCABKAlSBG5hbWUSQA'
    'oFb3duZXIYBSABKAsyKi5iYXNlX2FwcC5wcm9kdWN0c19jb250cm9sbGVyLlVzZXJSZXNwb25z'
    'ZVIFb3duZXJCBQoDX2lk');

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

@$core.Deprecated('Use userDestroyRequestDescriptor instead')
const UserDestroyRequest$json = {
  '1': 'UserDestroyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `UserDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDestroyRequestDescriptor =
    $convert.base64Decode('ChJVc2VyRGVzdHJveVJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use userListRequestDescriptor instead')
const UserListRequest$json = {
  '1': 'UserListRequest',
};

/// Descriptor for `UserListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListRequestDescriptor =
    $convert.base64Decode('Cg9Vc2VyTGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use userListResponseDescriptor instead')
const UserListResponse$json = {
  '1': 'UserListResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.base_app.products_controller.UserResponse',
      '10': 'results'
    },
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `UserListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListResponseDescriptor = $convert.base64Decode(
    'ChBVc2VyTGlzdFJlc3BvbnNlEkQKB3Jlc3VsdHMYASADKAsyKi5iYXNlX2FwcC5wcm9kdWN0c1'
    '9jb250cm9sbGVyLlVzZXJSZXNwb25zZVIHcmVzdWx0cxIUCgVjb3VudBgCIAEoBVIFY291bnQ=');

@$core.Deprecated('Use userPartialUpdateRequestDescriptor instead')
const UserPartialUpdateRequest$json = {
  '1': 'UserPartialUpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {
      '1': '_partial_update_fields',
      '3': 2,
      '4': 3,
      '5': 9,
      '10': 'PartialUpdateFields'
    },
    {'1': 'username', '3': 6, '4': 1, '5': 9, '10': 'username'},
    {
      '1': 'first_name',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'firstName',
      '17': true
    },
    {
      '1': 'last_name',
      '3': 8,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'lastName',
      '17': true
    },
    {'1': 'email', '3': 9, '4': 1, '5': 9, '9': 3, '10': 'email', '17': true},
    {'1': 'groups', '3': 13, '4': 3, '5': 5, '10': 'groups'},
  ],
  '8': [
    {'1': '_id'},
    {'1': '_first_name'},
    {'1': '_last_name'},
    {'1': '_email'},
  ],
};

/// Descriptor for `UserPartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPartialUpdateRequestDescriptor = $convert.base64Decode(
    'ChhVc2VyUGFydGlhbFVwZGF0ZVJlcXVlc3QSEwoCaWQYASABKAVIAFICaWSIAQESMwoWX3Bhcn'
    'RpYWxfdXBkYXRlX2ZpZWxkcxgCIAMoCVITUGFydGlhbFVwZGF0ZUZpZWxkcxIaCgh1c2VybmFt'
    'ZRgGIAEoCVIIdXNlcm5hbWUSIgoKZmlyc3RfbmFtZRgHIAEoCUgBUglmaXJzdE5hbWWIAQESIA'
    'oJbGFzdF9uYW1lGAggASgJSAJSCGxhc3ROYW1liAEBEhkKBWVtYWlsGAkgASgJSANSBWVtYWls'
    'iAEBEhYKBmdyb3VwcxgNIAMoBVIGZ3JvdXBzQgUKA19pZEINCgtfZmlyc3RfbmFtZUIMCgpfbG'
    'FzdF9uYW1lQggKBl9lbWFpbA==');

@$core.Deprecated('Use userRequestDescriptor instead')
const UserRequest$json = {
  '1': 'UserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'username', '3': 5, '4': 1, '5': 9, '10': 'username'},
    {
      '1': 'first_name',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'firstName',
      '17': true
    },
    {
      '1': 'last_name',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'lastName',
      '17': true
    },
    {'1': 'email', '3': 8, '4': 1, '5': 9, '9': 3, '10': 'email', '17': true},
    {'1': 'groups', '3': 12, '4': 3, '5': 5, '10': 'groups'},
  ],
  '8': [
    {'1': '_id'},
    {'1': '_first_name'},
    {'1': '_last_name'},
    {'1': '_email'},
  ],
};

/// Descriptor for `UserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRequestDescriptor = $convert.base64Decode(
    'CgtVc2VyUmVxdWVzdBITCgJpZBgBIAEoBUgAUgJpZIgBARIaCgh1c2VybmFtZRgFIAEoCVIIdX'
    'Nlcm5hbWUSIgoKZmlyc3RfbmFtZRgGIAEoCUgBUglmaXJzdE5hbWWIAQESIAoJbGFzdF9uYW1l'
    'GAcgASgJSAJSCGxhc3ROYW1liAEBEhkKBWVtYWlsGAggASgJSANSBWVtYWlsiAEBEhYKBmdyb3'
    'VwcxgMIAMoBVIGZ3JvdXBzQgUKA19pZEINCgtfZmlyc3RfbmFtZUIMCgpfbGFzdF9uYW1lQggK'
    'Bl9lbWFpbA==');

@$core.Deprecated('Use userResponseDescriptor instead')
const UserResponse$json = {
  '1': 'UserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'username', '3': 5, '4': 1, '5': 9, '10': 'username'},
    {
      '1': 'first_name',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'firstName',
      '17': true
    },
    {
      '1': 'last_name',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'lastName',
      '17': true
    },
    {'1': 'email', '3': 8, '4': 1, '5': 9, '9': 3, '10': 'email', '17': true},
    {'1': 'groups', '3': 12, '4': 3, '5': 5, '10': 'groups'},
  ],
  '8': [
    {'1': '_id'},
    {'1': '_first_name'},
    {'1': '_last_name'},
    {'1': '_email'},
  ],
};

/// Descriptor for `UserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userResponseDescriptor = $convert.base64Decode(
    'CgxVc2VyUmVzcG9uc2USEwoCaWQYASABKAVIAFICaWSIAQESGgoIdXNlcm5hbWUYBSABKAlSCH'
    'VzZXJuYW1lEiIKCmZpcnN0X25hbWUYBiABKAlIAVIJZmlyc3ROYW1liAEBEiAKCWxhc3RfbmFt'
    'ZRgHIAEoCUgCUghsYXN0TmFtZYgBARIZCgVlbWFpbBgIIAEoCUgDUgVlbWFpbIgBARIWCgZncm'
    '91cHMYDCADKAVSBmdyb3Vwc0IFCgNfaWRCDQoLX2ZpcnN0X25hbWVCDAoKX2xhc3RfbmFtZUII'
    'CgZfZW1haWw=');

@$core.Deprecated('Use userRetrieveRequestDescriptor instead')
const UserRetrieveRequest$json = {
  '1': 'UserRetrieveRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `UserRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRetrieveRequestDescriptor = $convert
    .base64Decode('ChNVc2VyUmV0cmlldmVSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

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
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
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
      '9': 1,
      '10': 'videoLowPixel',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_video_low_pixel'},
  ],
};

/// Descriptor for `VideoModePartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoModePartialUpdateRequestDescriptor = $convert.base64Decode(
    'Ch1WaWRlb01vZGVQYXJ0aWFsVXBkYXRlUmVxdWVzdBITCgJpZBgBIAEoBUgAUgJpZIgBARISCg'
    'RuYW1lGAIgASgJUgRuYW1lEjMKFl9wYXJ0aWFsX3VwZGF0ZV9maWVsZHMYAyADKAlSE1BhcnRp'
    'YWxVcGRhdGVGaWVsZHMSFAoFdmlkZW8YBCABKAlSBXZpZGVvEisKD3ZpZGVvX2xvd19waXhlbB'
    'gFIAEoCUgBUg12aWRlb0xvd1BpeGVsiAEBQgUKA19pZEISChBfdmlkZW9fbG93X3BpeGVs');

@$core.Deprecated('Use videoModeRequestDescriptor instead')
const VideoModeRequest$json = {
  '1': 'VideoModeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'video', '3': 3, '4': 1, '5': 9, '10': 'video'},
    {
      '1': 'video_low_pixel',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'videoLowPixel',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_video_low_pixel'},
  ],
};

/// Descriptor for `VideoModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoModeRequestDescriptor = $convert.base64Decode(
    'ChBWaWRlb01vZGVSZXF1ZXN0EhMKAmlkGAEgASgFSABSAmlkiAEBEhIKBG5hbWUYAiABKAlSBG'
    '5hbWUSFAoFdmlkZW8YAyABKAlSBXZpZGVvEisKD3ZpZGVvX2xvd19waXhlbBgEIAEoCUgBUg12'
    'aWRlb0xvd1BpeGVsiAEBQgUKA19pZEISChBfdmlkZW9fbG93X3BpeGVs');

@$core.Deprecated('Use videoModeResponseDescriptor instead')
const VideoModeResponse$json = {
  '1': 'VideoModeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'video', '3': 3, '4': 1, '5': 9, '10': 'video'},
    {
      '1': 'video_low_pixel',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'videoLowPixel',
      '17': true
    },
    {
      '1': 'polymorphic_ctype',
      '3': 5,
      '4': 1,
      '5': 5,
      '9': 2,
      '10': 'polymorphicCtype',
      '17': true
    },
  ],
  '8': [
    {'1': '_id'},
    {'1': '_video_low_pixel'},
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `VideoModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoModeResponseDescriptor = $convert.base64Decode(
    'ChFWaWRlb01vZGVSZXNwb25zZRITCgJpZBgBIAEoBUgAUgJpZIgBARISCgRuYW1lGAIgASgJUg'
    'RuYW1lEhQKBXZpZGVvGAMgASgJUgV2aWRlbxIrCg92aWRlb19sb3dfcGl4ZWwYBCABKAlIAVIN'
    'dmlkZW9Mb3dQaXhlbIgBARIwChFwb2x5bW9ycGhpY19jdHlwZRgFIAEoBUgCUhBwb2x5bW9ycG'
    'hpY0N0eXBliAEBQgUKA19pZEISChBfdmlkZW9fbG93X3BpeGVsQhQKEl9wb2x5bW9ycGhpY19j'
    'dHlwZQ==');

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
