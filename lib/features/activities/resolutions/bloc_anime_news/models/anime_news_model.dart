class AnimeNewsModel {
  final int id;
  final String title;

  AnimeNewsModel({
    required this.id,
    required this.title,
  });

  factory AnimeNewsModel.fromJson(Map<String, dynamic> json) {
    return AnimeNewsModel(
      id: json['id'],
      title: json['title']['rendered'],
    );
  }
}
