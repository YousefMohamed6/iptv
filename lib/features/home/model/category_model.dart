import 'package:hive_flutter/hive_flutter.dart';

part 'category_model.g.dart';

@HiveType(typeId: 1)
class CategoryModel extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String id;

  CategoryModel({
    required this.name,
    required this.id,
  });

  factory CategoryModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return CategoryModel(
      name: json['category_name'].toUpperCase(),
      id: json['category_id'],
    );
  }
}
