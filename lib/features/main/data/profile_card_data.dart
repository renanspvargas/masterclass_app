import 'package:masterclass_app/imports.dart';

class ProfileCardData {
  static ProfileCardModel data() {
    return ProfileCardModel(
      image: AppImages.profilePicture,
      name: "Renan S. P. Vargas",
      description:
          "I'm a iOS developer working with Swift since jan/2021. In 2020 I worked a year as Data Engineer specialized on AWS",
      telegramLink: "https://t.me/renanspvargas",
      githubLink: "https://github.com/renanspvargas",
      linkedinLink: "https://www.linkedin.com/in/renanspvargas/",
      instagramLink: "https://www.instagram.com/renanspvargas/",
    );
  }
}
