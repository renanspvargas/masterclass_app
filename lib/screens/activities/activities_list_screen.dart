import 'package:masterclass_app/imports.dart';

class ActivitiesListScreen extends StatefulWidget {
  final ActivitiesListScreenModel info;

  const ActivitiesListScreen({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  State<ActivitiesListScreen> createState() => _ActivitiesListScreenState();
}

class _ActivitiesListScreenState extends State<ActivitiesListScreen> {
  navigate(String page) {
    Navigator.pushNamed(context, page);
  }

  late String titlePage = widget.info.title;
  late int listLength = widget.info.activities.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: titlePage,
        backButtonActive: true,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          final titleActivity = widget.info.activities[index].title;
          final routeActivity = widget.info.activities[index].navigator;
          return ListTile(
            title: Text(titleActivity),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => navigate(routeActivity),
          );
        },
        itemCount: listLength,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 15,
          );
        },
      ),
    );
  }
}
