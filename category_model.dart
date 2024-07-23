import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tovivu_mbl/app/core/model/base_model.dart';
import 'package:tovivu_mbl/app/product/models/selections/category_data_model.dart';

part 'category_model.g.dart';

part 'category_model.freezed.dart';

@freezed
class CategoryModel with _$CategoryModel implements BaseModel<dynamic> {
  factory CategoryModel({
    String? code,
    CategoryDataModel? data,
    String? description,
    String? message,
    String? pagination,
    int? status,
    double? version,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  CategoryModel._();

  @override
  CategoryModel fromJson(Map<String, dynamic> json) =>
      CategoryModel.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
