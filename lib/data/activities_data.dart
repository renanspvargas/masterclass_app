import 'package:masterclass_app/imports.dart';

class ActivitiesData {
  static List<Activity> allActivities() {
    return [
      Activity(
        title: "title",
        body: "body",
        exercicios: 3,
        sourceLink: "sourceLink",
      ),
    ];
  }
}
