import 'package:masterclass_app/imports.dart';

class ActivityModel {
  final String icon;
  final String title;
  final String body;
  final int exercicios;
  final String sourceLink;
  final ActivitiesListScreenModel activitiesList;

  ActivityModel({
    required this.icon,
    required this.title,
    required this.body,
    required this.exercicios,
    required this.sourceLink,
    required this.activitiesList,
  });
}
