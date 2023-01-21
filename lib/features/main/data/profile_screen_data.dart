import 'package:masterclass_app/imports.dart';

abstract class ProfileScreenData {
  static ProfileScreenModel data() {
    return ProfileScreenModel(
      profileCard: ProfileCardData.data(),
      favoriteTechnologies: FavoriteTechnologiesData.allTechnologies(),
    );
  }
}
