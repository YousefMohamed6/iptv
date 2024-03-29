class ProviderModel {
  final String name, url, background, banner, logo, color, color2;
  final int id;
  final List<dynamic> netflixIds, shahidIds, topIds, amazonIds, kidsId;
  ProviderModel._( {
   required this.id,
    required this.name,
    required this.url,
    required this.background,
    required this.banner,
    required this.logo,
    required this.color,
    required this.color2,
    required this.shahidIds,
    required this.amazonIds,
    required this.netflixIds,
    required this.topIds,
    required this.kidsId,
  });
  factory ProviderModel.fromJson(Map<String, dynamic> json) {
    return ProviderModel._(
      id: json['id'],
      name: json['Server Name'],
      url: json['url'],
      background: json['background'],
      banner: json['Banner'],
      logo: json['Logo'],
      color: json['color'],
      color2: json['color2'],
      shahidIds: json['Categorie_Shahid_id'],
      netflixIds: json['Categorie_Netflix_id'],
      amazonIds: json['Categorie_amazon_id'],
      topIds: json['Categorie_top_id'],
      kidsId: json['Categorie_Kids_id'],
    );
  }
}
