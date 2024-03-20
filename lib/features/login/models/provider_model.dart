class ProviderModel {
  final String name, url, background, banner, logo, color;

  ProviderModel._(
      {required this.name,
      required this.url,
      required this.background,
      required this.banner,
      required this.logo,
      required this.color});
  factory ProviderModel.fromJson(Map<String, dynamic> json) {
    return ProviderModel._(
      name: json['Server Name'],
      url: json['url'],
      background: json['background'],
      banner: json['Banner'],
      logo: json['Logo'],
      color: json['color'],
    );
  }
}
