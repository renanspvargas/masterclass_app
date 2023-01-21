class DesignPatternCommonModel {
  final String id;
  final String name;

  DesignPatternCommonModel({
    required this.id,
    required this.name,
  });

  factory DesignPatternCommonModel.fromJson(Map<String, dynamic> json) {
    return DesignPatternCommonModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
