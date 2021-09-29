///
//  Generated code. Do not modify.
//  source: groceries.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use itemDescriptor instead')
const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'categoryId', '3': 3, '4': 1, '5': 5, '10': 'categoryId'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode('CgRJdGVtEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh4KCmNhdGVnb3J5SWQYAyABKAVSCmNhdGVnb3J5SWQ=');
@$core.Deprecated('Use categoryDescriptor instead')
const Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Category`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryDescriptor = $convert.base64Decode('CghDYXRlZ29yeRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use itemsDescriptor instead')
const Items$json = const {
  '1': 'Items',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.Item', '10': 'items'},
  ],
};

/// Descriptor for `Items`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemsDescriptor = $convert.base64Decode('CgVJdGVtcxIbCgVpdGVtcxgBIAMoCzIFLkl0ZW1SBWl0ZW1z');
@$core.Deprecated('Use categoriesDescriptor instead')
const Categories$json = const {
  '1': 'Categories',
  '2': const [
    const {'1': 'categories', '3': 1, '4': 3, '5': 11, '6': '.Category', '10': 'categories'},
  ],
};

/// Descriptor for `Categories`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoriesDescriptor = $convert.base64Decode('CgpDYXRlZ29yaWVzEikKCmNhdGVnb3JpZXMYASADKAsyCS5DYXRlZ29yeVIKY2F0ZWdvcmllcw==');
@$core.Deprecated('Use allItemsOfCategoryDescriptor instead')
const AllItemsOfCategory$json = const {
  '1': 'AllItemsOfCategory',
  '2': const [
    const {'1': 'categoryId', '3': 3, '4': 1, '5': 5, '10': 'categoryId'},
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.Item', '10': 'items'},
  ],
};

/// Descriptor for `AllItemsOfCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allItemsOfCategoryDescriptor = $convert.base64Decode('ChJBbGxJdGVtc09mQ2F0ZWdvcnkSHgoKY2F0ZWdvcnlJZBgDIAEoBVIKY2F0ZWdvcnlJZBIbCgVpdGVtcxgBIAMoCzIFLkl0ZW1SBWl0ZW1z');
