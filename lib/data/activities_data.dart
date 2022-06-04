import 'package:masterclass_app/imports.dart';

class ActivitiesData {
  static List<Activity> allActivities() {
    return [
      Activity(
        title: "Animações",
        body:
            "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
        exercicios: 4,
        sourceLink: "sourceLink",
      ),
    ];
  }
}
