class ChannalModel {
  final String name;
  final String? imageUrl;

  ChannalModel._({required this.name, required this.imageUrl});
  factory ChannalModel.fromJson(Map<String, dynamic> data) {
    return ChannalModel._(
      name: data['name'],
      imageUrl: data['stream_icon'],
    );
  }
}
