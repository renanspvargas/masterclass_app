import 'package:masterclass_app/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Atividades"),
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
