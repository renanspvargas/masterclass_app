import 'package:masterclass_app/imports.dart';

abstract class FavoriteTechnologiesData {
  static List<FavoriteTechnologyModel> allTechnologies() {
    return [
      FavoriteTechnologyModel(
        image: AssetsConstants.svgs.techFlutter,
        name: "Flutter",
      ),
      FavoriteTechnologyModel(
        image: AssetsConstants.svgs.techPython,
        name: "Python",
      ),
      FavoriteTechnologyModel(
        image: AssetsConstants.svgs.techSwift,
        name: "Swift",
      ),
    ];
  }
}
