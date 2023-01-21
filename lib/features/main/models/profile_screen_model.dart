import 'package:masterclass_app/imports.dart';

class ProfileScreenModel {
  final ProfileCardModel profileCard;
  final List<FavoriteTechnologyModel> favoriteTechnologies;

  ProfileScreenModel({
    required this.profileCard,
    required this.favoriteTechnologies,
  });
}
