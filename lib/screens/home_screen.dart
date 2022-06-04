import 'package:masterclass_app/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Atividades"),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView.separated(
          itemCount: 5,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 16,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return const ActivityCard();
          },
        ),
      ),
    );
  }
}
