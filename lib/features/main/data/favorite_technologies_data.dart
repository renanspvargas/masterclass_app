import 'package:masterclass_app/imports.dart';

class FavoriteTechnologiesData {
  static List<FavoriteTechnologyModel> allTechnologies() {
    return [
      FavoriteTechnologyModel(
        image: AppSvgs.techFlutter,
        name: "Flutter",
      ),
      FavoriteTechnologyModel(
        image: AppSvgs.techPython,
        name: "Python",
      ),
      FavoriteTechnologyModel(
        image: AppSvgs.techSwift,
        name: "Swift",
      ),
    ];
  }
}
