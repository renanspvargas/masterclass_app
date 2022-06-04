import 'package:masterclass_app/imports.dart';

class ActivitiesData {
  static List<Activity> allActivities() {
    return [
      Activity(
        icon: AssetsConstants.svgs.awesomeRunning,
        title: "Animações",
        body: "Estudos sobre animações implícitas e controladas",
        exercicios: 4,
        sourceLink: "sourceLink",
      ),
    ];
  }
}
