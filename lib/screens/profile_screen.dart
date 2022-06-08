import 'package:masterclass_app/imports.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final ProfileScreenModel profileData = ProfileScreenData.data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sobre o dev'),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileCardWidget(profileCard: profileData.profileCard),
              const SizedBox(height: 20),
              Text(
                'Tecnologias Favoritas',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  TechnologyCard(
                    technology: FavoriteTechnologyModel(
                      image: AssetsConstants.svgs.featherTarget,
                      name: 'Flutter',
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCardWidget extends StatelessWidget {
  final ProfileCardModel profileCard;
  const ProfileCardWidget({
    Key? key,
    required this.profileCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).listTileTheme.tileColor,
        borderRadius: BorderRadius.circular(20),
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
            height: 120,
            width: 120,
            child: ClipOval(
              child: Image.asset(
                profileCard.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            profileCard.name,
            style: Theme.of(context).textTheme.headline2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              profileCard.description,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.indigo,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 27),
              Container(
                color: Colors.indigo,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 27),
              Container(
                color: Colors.indigo,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 27),
              Container(
                color: Colors.indigo,
                width: 20,
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
