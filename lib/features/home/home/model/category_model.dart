class CategoryModel {
  final String name;
  final String id;

  CategoryModel._({
    required this.name,
    required this.id,
  });

  factory CategoryModel.fromJson(
     Map<String, dynamic> json,
  ) {
    return CategoryModel._(
      name: json['category_name'],
      id: json['category_id'],
    );
  }
}
