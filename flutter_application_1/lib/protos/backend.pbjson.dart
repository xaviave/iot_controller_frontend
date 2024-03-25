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

@$core.Deprecated('Use baseProductDestroyRequestDescriptor instead')
const BaseProductDestroyRequest$json = {
  '1': 'BaseProductDestroyRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `BaseProductDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseProductDestroyRequestDescriptor = $convert.base64Decode(
    'ChlCYXNlUHJvZHVjdERlc3Ryb3lSZXF1ZXN0EhIKBHV1aWQYASABKAlSBHV1aWQ=');

@$core.Deprecated('Use baseProductListRequestDescriptor instead')
const BaseProductListRequest$json = {
  '1': 'BaseProductListRequest',
};

/// Descriptor for `BaseProductListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseProductListRequestDescriptor = $convert.base64Decode(
    'ChZCYXNlUHJvZHVjdExpc3RSZXF1ZXN0');

@$core.Deprecated('Use baseProductListResponseDescriptor instead')
const BaseProductListResponse$json = {
  '1': 'BaseProductListResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.base_app.products_controller.BaseProductResponse', '10': 'results'},
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `BaseProductListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseProductListResponseDescriptor = $convert.base64Decode(
    'ChdCYXNlUHJvZHVjdExpc3RSZXNwb25zZRJLCgdyZXN1bHRzGAEgAygLMjEuYmFzZV9hcHAucH'
    'JvZHVjdHNfY29udHJvbGxlci5CYXNlUHJvZHVjdFJlc3BvbnNlUgdyZXN1bHRzEhQKBWNvdW50'
    'GAIgASgFUgVjb3VudA==');

@$core.Deprecated('Use baseProductPartialUpdateRequestDescriptor instead')
const BaseProductPartialUpdateRequest$json = {
  '1': 'BaseProductPartialUpdateRequest',
  '2': [
    {'1': 'categories', '3': 2, '4': 3, '5': 9, '10': 'categories'},
    {'1': '_partial_update_fields', '3': 3, '4': 3, '5': 9, '10': 'PartialUpdateFields'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uuid', '3': 5, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `BaseProductPartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseProductPartialUpdateRequestDescriptor = $convert.base64Decode(
    'Ch9CYXNlUHJvZHVjdFBhcnRpYWxVcGRhdGVSZXF1ZXN0Eh4KCmNhdGVnb3JpZXMYAiADKAlSCm'
    'NhdGVnb3JpZXMSMwoWX3BhcnRpYWxfdXBkYXRlX2ZpZWxkcxgDIAMoCVITUGFydGlhbFVwZGF0'
    'ZUZpZWxkcxISCgRuYW1lGAQgASgJUgRuYW1lEhIKBHV1aWQYBSABKAlSBHV1aWQ=');

@$core.Deprecated('Use baseProductRequestDescriptor instead')
const BaseProductRequest$json = {
  '1': 'BaseProductRequest',
  '2': [
    {'1': 'categories', '3': 2, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uuid', '3': 4, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `BaseProductRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseProductRequestDescriptor = $convert.base64Decode(
    'ChJCYXNlUHJvZHVjdFJlcXVlc3QSHgoKY2F0ZWdvcmllcxgCIAMoCVIKY2F0ZWdvcmllcxISCg'
    'RuYW1lGAMgASgJUgRuYW1lEhIKBHV1aWQYBCABKAlSBHV1aWQ=');

@$core.Deprecated('Use baseProductResponseDescriptor instead')
const BaseProductResponse$json = {
  '1': 'BaseProductResponse',
  '2': [
    {'1': 'categories', '3': 2, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'polymorphic_ctype', '3': 4, '4': 1, '5': 5, '9': 0, '10': 'polymorphicCtype', '17': true},
    {'1': 'uuid', '3': 5, '4': 1, '5': 9, '10': 'uuid'},
  ],
  '8': [
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `BaseProductResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseProductResponseDescriptor = $convert.base64Decode(
    'ChNCYXNlUHJvZHVjdFJlc3BvbnNlEh4KCmNhdGVnb3JpZXMYAiADKAlSCmNhdGVnb3JpZXMSEg'
    'oEbmFtZRgDIAEoCVIEbmFtZRIwChFwb2x5bW9ycGhpY19jdHlwZRgEIAEoBUgAUhBwb2x5bW9y'
    'cGhpY0N0eXBliAEBEhIKBHV1aWQYBSABKAlSBHV1aWRCFAoSX3BvbHltb3JwaGljX2N0eXBl');

@$core.Deprecated('Use baseProductRetrieveRequestDescriptor instead')
const BaseProductRetrieveRequest$json = {
  '1': 'BaseProductRetrieveRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `BaseProductRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseProductRetrieveRequestDescriptor = $convert.base64Decode(
    'ChpCYXNlUHJvZHVjdFJldHJpZXZlUmVxdWVzdBISCgR1dWlkGAEgASgJUgR1dWlk');

@$core.Deprecated('Use categoryDestroyRequestDescriptor instead')
const CategoryDestroyRequest$json = {
  '1': 'CategoryDestroyRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `CategoryDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryDestroyRequestDescriptor = $convert.base64Decode(
    'ChZDYXRlZ29yeURlc3Ryb3lSZXF1ZXN0EhIKBHV1aWQYASABKAlSBHV1aWQ=');

@$core.Deprecated('Use categoryListRequestDescriptor instead')
const CategoryListRequest$json = {
  '1': 'CategoryListRequest',
};

/// Descriptor for `CategoryListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryListRequestDescriptor = $convert.base64Decode(
    'ChNDYXRlZ29yeUxpc3RSZXF1ZXN0');

@$core.Deprecated('Use categoryListResponseDescriptor instead')
const CategoryListResponse$json = {
  '1': 'CategoryListResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.base_app.products_controller.CategoryResponse', '10': 'results'},
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
    {'1': '_partial_update_fields', '3': 2, '4': 3, '5': 9, '10': 'PartialUpdateFields'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uuid', '3': 4, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `CategoryPartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryPartialUpdateRequestDescriptor = $convert.base64Decode(
    'ChxDYXRlZ29yeVBhcnRpYWxVcGRhdGVSZXF1ZXN0EjMKFl9wYXJ0aWFsX3VwZGF0ZV9maWVsZH'
    'MYAiADKAlSE1BhcnRpYWxVcGRhdGVGaWVsZHMSEgoEbmFtZRgDIAEoCVIEbmFtZRISCgR1dWlk'
    'GAQgASgJUgR1dWlk');

@$core.Deprecated('Use categoryRequestDescriptor instead')
const CategoryRequest$json = {
  '1': 'CategoryRequest',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uuid', '3': 3, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `CategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryRequestDescriptor = $convert.base64Decode(
    'Cg9DYXRlZ29yeVJlcXVlc3QSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgR1dWlkGAMgASgJUgR1dW'
    'lk');

@$core.Deprecated('Use categoryResponseDescriptor instead')
const CategoryResponse$json = {
  '1': 'CategoryResponse',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uuid', '3': 3, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `CategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryResponseDescriptor = $convert.base64Decode(
    'ChBDYXRlZ29yeVJlc3BvbnNlEhIKBG5hbWUYAiABKAlSBG5hbWUSEgoEdXVpZBgDIAEoCVIEdX'
    'VpZA==');

@$core.Deprecated('Use categoryRetrieveRequestDescriptor instead')
const CategoryRetrieveRequest$json = {
  '1': 'CategoryRetrieveRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `CategoryRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryRetrieveRequestDescriptor = $convert.base64Decode(
    'ChdDYXRlZ29yeVJldHJpZXZlUmVxdWVzdBISCgR1dWlkGAEgASgJUgR1dWlk');

@$core.Deprecated('Use coffeeMachineDestroyRequestDescriptor instead')
const CoffeeMachineDestroyRequest$json = {
  '1': 'CoffeeMachineDestroyRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `CoffeeMachineDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineDestroyRequestDescriptor = $convert.base64Decode(
    'ChtDb2ZmZWVNYWNoaW5lRGVzdHJveVJlcXVlc3QSEgoEdXVpZBgBIAEoCVIEdXVpZA==');

@$core.Deprecated('Use coffeeMachineListRequestDescriptor instead')
const CoffeeMachineListRequest$json = {
  '1': 'CoffeeMachineListRequest',
};

/// Descriptor for `CoffeeMachineListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineListRequestDescriptor = $convert.base64Decode(
    'ChhDb2ZmZWVNYWNoaW5lTGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use coffeeMachineListResponseDescriptor instead')
const CoffeeMachineListResponse$json = {
  '1': 'CoffeeMachineListResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.base_app.products_controller.CoffeeMachineResponse', '10': 'results'},
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
    {'1': '_partial_update_fields', '3': 2, '4': 3, '5': 9, '10': 'PartialUpdateFields'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status', '3': 4, '4': 1, '5': 5, '10': 'status'},
    {'1': 'heat', '3': 5, '4': 1, '5': 2, '10': 'heat'},
    {'1': 'water_level', '3': 6, '4': 1, '5': 5, '10': 'waterLevel'},
    {'1': 'used_water_level', '3': 7, '4': 1, '5': 5, '10': 'usedWaterLevel'},
    {'1': 'coffee_level', '3': 8, '4': 1, '5': 5, '10': 'coffeeLevel'},
    {'1': 'filter_position', '3': 9, '4': 1, '5': 8, '10': 'filterPosition'},
    {'1': 'mode_value', '3': 10, '4': 1, '5': 5, '10': 'modeValue'},
    {'1': 'categories', '3': 11, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'uuid', '3': 12, '4': 1, '5': 9, '10': 'uuid'},
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
    'ZRIeCgpjYXRlZ29yaWVzGAsgAygJUgpjYXRlZ29yaWVzEhIKBHV1aWQYDCABKAlSBHV1aWQ=');

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
    {'1': 'categories', '3': 10, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'uuid', '3': 11, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `CoffeeMachineRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineRequestDescriptor = $convert.base64Decode(
    'ChRDb2ZmZWVNYWNoaW5lUmVxdWVzdBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBnN0YXR1cxgDIA'
    'EoBVIGc3RhdHVzEhIKBGhlYXQYBCABKAJSBGhlYXQSHwoLd2F0ZXJfbGV2ZWwYBSABKAVSCndh'
    'dGVyTGV2ZWwSKAoQdXNlZF93YXRlcl9sZXZlbBgGIAEoBVIOdXNlZFdhdGVyTGV2ZWwSIQoMY2'
    '9mZmVlX2xldmVsGAcgASgFUgtjb2ZmZWVMZXZlbBInCg9maWx0ZXJfcG9zaXRpb24YCCABKAhS'
    'DmZpbHRlclBvc2l0aW9uEh0KCm1vZGVfdmFsdWUYCSABKAVSCW1vZGVWYWx1ZRIeCgpjYXRlZ2'
    '9yaWVzGAogAygJUgpjYXRlZ29yaWVzEhIKBHV1aWQYCyABKAlSBHV1aWQ=');

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
    {'1': 'polymorphic_ctype', '3': 10, '4': 1, '5': 5, '9': 0, '10': 'polymorphicCtype', '17': true},
    {'1': 'categories', '3': 11, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'uuid', '3': 12, '4': 1, '5': 9, '10': 'uuid'},
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
    '1vcnBoaWNfY3R5cGUYCiABKAVIAFIQcG9seW1vcnBoaWNDdHlwZYgBARIeCgpjYXRlZ29yaWVz'
    'GAsgAygJUgpjYXRlZ29yaWVzEhIKBHV1aWQYDCABKAlSBHV1aWRCFAoSX3BvbHltb3JwaGljX2'
    'N0eXBl');

@$core.Deprecated('Use coffeeMachineRetrieveRequestDescriptor instead')
const CoffeeMachineRetrieveRequest$json = {
  '1': 'CoffeeMachineRetrieveRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `CoffeeMachineRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coffeeMachineRetrieveRequestDescriptor = $convert.base64Decode(
    'ChxDb2ZmZWVNYWNoaW5lUmV0cmlldmVSZXF1ZXN0EhIKBHV1aWQYASABKAlSBHV1aWQ=');

@$core.Deprecated('Use ledModeDestroyRequestDescriptor instead')
const LedModeDestroyRequest$json = {
  '1': 'LedModeDestroyRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `LedModeDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledModeDestroyRequestDescriptor = $convert.base64Decode(
    'ChVMZWRNb2RlRGVzdHJveVJlcXVlc3QSEgoEdXVpZBgBIAEoCVIEdXVpZA==');

@$core.Deprecated('Use ledModeListRequestDescriptor instead')
const LedModeListRequest$json = {
  '1': 'LedModeListRequest',
};

/// Descriptor for `LedModeListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledModeListRequestDescriptor = $convert.base64Decode(
    'ChJMZWRNb2RlTGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use ledModeListResponseDescriptor instead')
const LedModeListResponse$json = {
  '1': 'LedModeListResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.base_app.products_controller.LedModeResponse', '10': 'results'},
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `LedModeListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledModeListResponseDescriptor = $convert.base64Decode(
    'ChNMZWRNb2RlTGlzdFJlc3BvbnNlEkcKB3Jlc3VsdHMYASADKAsyLS5iYXNlX2FwcC5wcm9kdW'
    'N0c19jb250cm9sbGVyLkxlZE1vZGVSZXNwb25zZVIHcmVzdWx0cxIUCgVjb3VudBgCIAEoBVIF'
    'Y291bnQ=');

@$core.Deprecated('Use ledModePartialUpdateRequestDescriptor instead')
const LedModePartialUpdateRequest$json = {
  '1': 'LedModePartialUpdateRequest',
  '2': [
    {'1': '_partial_update_fields', '3': 2, '4': 3, '5': 9, '10': 'PartialUpdateFields'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uuid', '3': 4, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `LedModePartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledModePartialUpdateRequestDescriptor = $convert.base64Decode(
    'ChtMZWRNb2RlUGFydGlhbFVwZGF0ZVJlcXVlc3QSMwoWX3BhcnRpYWxfdXBkYXRlX2ZpZWxkcx'
    'gCIAMoCVITUGFydGlhbFVwZGF0ZUZpZWxkcxISCgRuYW1lGAMgASgJUgRuYW1lEhIKBHV1aWQY'
    'BCABKAlSBHV1aWQ=');

@$core.Deprecated('Use ledModeRequestDescriptor instead')
const LedModeRequest$json = {
  '1': 'LedModeRequest',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uuid', '3': 3, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `LedModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledModeRequestDescriptor = $convert.base64Decode(
    'Cg5MZWRNb2RlUmVxdWVzdBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBHV1aWQYAyABKAlSBHV1aW'
    'Q=');

@$core.Deprecated('Use ledModeResponseDescriptor instead')
const LedModeResponse$json = {
  '1': 'LedModeResponse',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'polymorphic_ctype', '3': 3, '4': 1, '5': 5, '9': 0, '10': 'polymorphicCtype', '17': true},
    {'1': 'uuid', '3': 4, '4': 1, '5': 9, '10': 'uuid'},
  ],
  '8': [
    {'1': '_polymorphic_ctype'},
  ],
};

/// Descriptor for `LedModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledModeResponseDescriptor = $convert.base64Decode(
    'Cg9MZWRNb2RlUmVzcG9uc2USEgoEbmFtZRgCIAEoCVIEbmFtZRIwChFwb2x5bW9ycGhpY19jdH'
    'lwZRgDIAEoBUgAUhBwb2x5bW9ycGhpY0N0eXBliAEBEhIKBHV1aWQYBCABKAlSBHV1aWRCFAoS'
    'X3BvbHltb3JwaGljX2N0eXBl');

@$core.Deprecated('Use ledModeRetrieveRequestDescriptor instead')
const LedModeRetrieveRequest$json = {
  '1': 'LedModeRetrieveRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `LedModeRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledModeRetrieveRequestDescriptor = $convert.base64Decode(
    'ChZMZWRNb2RlUmV0cmlldmVSZXF1ZXN0EhIKBHV1aWQYASABKAlSBHV1aWQ=');

@$core.Deprecated('Use ledPanelDestroyRequestDescriptor instead')
const LedPanelDestroyRequest$json = {
  '1': 'LedPanelDestroyRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `LedPanelDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelDestroyRequestDescriptor = $convert.base64Decode(
    'ChZMZWRQYW5lbERlc3Ryb3lSZXF1ZXN0EhIKBHV1aWQYASABKAlSBHV1aWQ=');

@$core.Deprecated('Use ledPanelListRequestDescriptor instead')
const LedPanelListRequest$json = {
  '1': 'LedPanelListRequest',
};

/// Descriptor for `LedPanelListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelListRequestDescriptor = $convert.base64Decode(
    'ChNMZWRQYW5lbExpc3RSZXF1ZXN0');

@$core.Deprecated('Use ledPanelListResponseDescriptor instead')
const LedPanelListResponse$json = {
  '1': 'LedPanelListResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.base_app.products_controller.LedPanelResponse', '10': 'results'},
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
    {'1': '_partial_update_fields', '3': 2, '4': 3, '5': 9, '10': 'PartialUpdateFields'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status', '3': 4, '4': 1, '5': 5, '10': 'status'},
    {'1': 'brightness', '3': 5, '4': 1, '5': 1, '10': 'brightness'},
    {'1': 'mode', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'mode', '17': true},
    {'1': 'categories', '3': 7, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'uuid', '3': 8, '4': 1, '5': 9, '10': 'uuid'},
  ],
  '8': [
    {'1': '_mode'},
  ],
};

/// Descriptor for `LedPanelPartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelPartialUpdateRequestDescriptor = $convert.base64Decode(
    'ChxMZWRQYW5lbFBhcnRpYWxVcGRhdGVSZXF1ZXN0EjMKFl9wYXJ0aWFsX3VwZGF0ZV9maWVsZH'
    'MYAiADKAlSE1BhcnRpYWxVcGRhdGVGaWVsZHMSEgoEbmFtZRgDIAEoCVIEbmFtZRIWCgZzdGF0'
    'dXMYBCABKAVSBnN0YXR1cxIeCgpicmlnaHRuZXNzGAUgASgBUgpicmlnaHRuZXNzEhcKBG1vZG'
    'UYBiABKAlIAFIEbW9kZYgBARIeCgpjYXRlZ29yaWVzGAcgAygJUgpjYXRlZ29yaWVzEhIKBHV1'
    'aWQYCCABKAlSBHV1aWRCBwoFX21vZGU=');

@$core.Deprecated('Use ledPanelRequestDescriptor instead')
const LedPanelRequest$json = {
  '1': 'LedPanelRequest',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status', '3': 3, '4': 1, '5': 5, '10': 'status'},
    {'1': 'brightness', '3': 4, '4': 1, '5': 1, '10': 'brightness'},
    {'1': 'mode', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'mode', '17': true},
    {'1': 'categories', '3': 6, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'uuid', '3': 7, '4': 1, '5': 9, '10': 'uuid'},
  ],
  '8': [
    {'1': '_mode'},
  ],
};

/// Descriptor for `LedPanelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelRequestDescriptor = $convert.base64Decode(
    'Cg9MZWRQYW5lbFJlcXVlc3QSEgoEbmFtZRgCIAEoCVIEbmFtZRIWCgZzdGF0dXMYAyABKAVSBn'
    'N0YXR1cxIeCgpicmlnaHRuZXNzGAQgASgBUgpicmlnaHRuZXNzEhcKBG1vZGUYBSABKAlIAFIE'
    'bW9kZYgBARIeCgpjYXRlZ29yaWVzGAYgAygJUgpjYXRlZ29yaWVzEhIKBHV1aWQYByABKAlSBH'
    'V1aWRCBwoFX21vZGU=');

@$core.Deprecated('Use ledPanelResponseDescriptor instead')
const LedPanelResponse$json = {
  '1': 'LedPanelResponse',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status', '3': 3, '4': 1, '5': 5, '10': 'status'},
    {'1': 'brightness', '3': 4, '4': 1, '5': 1, '10': 'brightness'},
    {'1': 'polymorphic_ctype', '3': 5, '4': 1, '5': 5, '9': 0, '10': 'polymorphicCtype', '17': true},
    {'1': 'mode', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'mode', '17': true},
    {'1': 'categories', '3': 7, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'uuid', '3': 8, '4': 1, '5': 9, '10': 'uuid'},
  ],
  '8': [
    {'1': '_polymorphic_ctype'},
    {'1': '_mode'},
  ],
};

/// Descriptor for `LedPanelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelResponseDescriptor = $convert.base64Decode(
    'ChBMZWRQYW5lbFJlc3BvbnNlEhIKBG5hbWUYAiABKAlSBG5hbWUSFgoGc3RhdHVzGAMgASgFUg'
    'ZzdGF0dXMSHgoKYnJpZ2h0bmVzcxgEIAEoAVIKYnJpZ2h0bmVzcxIwChFwb2x5bW9ycGhpY19j'
    'dHlwZRgFIAEoBUgAUhBwb2x5bW9ycGhpY0N0eXBliAEBEhcKBG1vZGUYBiABKAlIAVIEbW9kZY'
    'gBARIeCgpjYXRlZ29yaWVzGAcgAygJUgpjYXRlZ29yaWVzEhIKBHV1aWQYCCABKAlSBHV1aWRC'
    'FAoSX3BvbHltb3JwaGljX2N0eXBlQgcKBV9tb2Rl');

@$core.Deprecated('Use ledPanelRetrieveRequestDescriptor instead')
const LedPanelRetrieveRequest$json = {
  '1': 'LedPanelRetrieveRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `LedPanelRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledPanelRetrieveRequestDescriptor = $convert.base64Decode(
    'ChdMZWRQYW5lbFJldHJpZXZlUmVxdWVzdBISCgR1dWlkGAEgASgJUgR1dWlk');

@$core.Deprecated('Use projectDestroyRequestDescriptor instead')
const ProjectDestroyRequest$json = {
  '1': 'ProjectDestroyRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `ProjectDestroyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectDestroyRequestDescriptor = $convert.base64Decode(
    'ChVQcm9qZWN0RGVzdHJveVJlcXVlc3QSEgoEdXVpZBgBIAEoCVIEdXVpZA==');

@$core.Deprecated('Use projectListRequestDescriptor instead')
const ProjectListRequest$json = {
  '1': 'ProjectListRequest',
};

/// Descriptor for `ProjectListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectListRequestDescriptor = $convert.base64Decode(
    'ChJQcm9qZWN0TGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use projectListResponseDescriptor instead')
const ProjectListResponse$json = {
  '1': 'ProjectListResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.base_app.products_controller.ProjectResponse', '10': 'results'},
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
    {'1': 'products', '3': 2, '4': 3, '5': 9, '10': 'products'},
    {'1': '_partial_update_fields', '3': 3, '4': 3, '5': 9, '10': 'PartialUpdateFields'},
    {'1': 'pub_date', '3': 4, '4': 1, '5': 9, '10': 'pubDate'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'owner', '3': 6, '4': 1, '5': 5, '10': 'owner'},
    {'1': 'uuid', '3': 7, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `ProjectPartialUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectPartialUpdateRequestDescriptor = $convert.base64Decode(
    'ChtQcm9qZWN0UGFydGlhbFVwZGF0ZVJlcXVlc3QSGgoIcHJvZHVjdHMYAiADKAlSCHByb2R1Y3'
    'RzEjMKFl9wYXJ0aWFsX3VwZGF0ZV9maWVsZHMYAyADKAlSE1BhcnRpYWxVcGRhdGVGaWVsZHMS'
    'GQoIcHViX2RhdGUYBCABKAlSB3B1YkRhdGUSEgoEbmFtZRgFIAEoCVIEbmFtZRIUCgVvd25lch'
    'gGIAEoBVIFb3duZXISEgoEdXVpZBgHIAEoCVIEdXVpZA==');

@$core.Deprecated('Use projectRequestDescriptor instead')
const ProjectRequest$json = {
  '1': 'ProjectRequest',
  '2': [
    {'1': 'products', '3': 2, '4': 3, '5': 9, '10': 'products'},
    {'1': 'pub_date', '3': 3, '4': 1, '5': 9, '10': 'pubDate'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'owner', '3': 5, '4': 1, '5': 5, '10': 'owner'},
    {'1': 'uuid', '3': 6, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `ProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectRequestDescriptor = $convert.base64Decode(
    'Cg5Qcm9qZWN0UmVxdWVzdBIaCghwcm9kdWN0cxgCIAMoCVIIcHJvZHVjdHMSGQoIcHViX2RhdG'
    'UYAyABKAlSB3B1YkRhdGUSEgoEbmFtZRgEIAEoCVIEbmFtZRIUCgVvd25lchgFIAEoBVIFb3du'
    'ZXISEgoEdXVpZBgGIAEoCVIEdXVpZA==');

@$core.Deprecated('Use projectResponseDescriptor instead')
const ProjectResponse$json = {
  '1': 'ProjectResponse',
  '2': [
    {'1': 'products', '3': 2, '4': 3, '5': 9, '10': 'products'},
    {'1': 'pub_date', '3': 3, '4': 1, '5': 9, '10': 'pubDate'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'owner', '3': 5, '4': 1, '5': 5, '10': 'owner'},
    {'1': 'uuid', '3': 6, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `ProjectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectResponseDescriptor = $convert.base64Decode(
    'Cg9Qcm9qZWN0UmVzcG9uc2USGgoIcHJvZHVjdHMYAiADKAlSCHByb2R1Y3RzEhkKCHB1Yl9kYX'
    'RlGAMgASgJUgdwdWJEYXRlEhIKBG5hbWUYBCABKAlSBG5hbWUSFAoFb3duZXIYBSABKAVSBW93'
    'bmVyEhIKBHV1aWQYBiABKAlSBHV1aWQ=');

@$core.Deprecated('Use projectRetrieveRequestDescriptor instead')
const ProjectRetrieveRequest$json = {
  '1': 'ProjectRetrieveRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `ProjectRetrieveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectRetrieveRequestDescriptor = $convert.base64Decode(
    'ChZQcm9qZWN0UmV0cmlldmVSZXF1ZXN0EhIKBHV1aWQYASABKAlSBHV1aWQ=');

