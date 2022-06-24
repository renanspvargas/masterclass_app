import 'package:masterclass_app/imports.dart';

abstract class ActivitiesData {
  static final List<ActivityModel> allActivities = [
    ActivityModel(
      icon: AssetsConstants.svgs.awesomeBrain,
      title: _logic.title,
      body: "Algoritmo para validação de CPF",
      exercicios: _logic.activities.length,
      sourceLink: "",
      activitiesList: _logic,
    ),
    ActivityModel(
      icon: AssetsConstants.svgs.awesomeRunning,
      title: _animation.title,
      body: "Estudos sobre animações implícitas e controladas",
      exercicios: _animation.activities.length,
      sourceLink: "",
      activitiesList: _animation,
    ),
    ActivityModel(
      icon: AssetsConstants.svgs.awesomeGlasses,
      title: _mockup.title,
      body: "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
      exercicios: _mockup.activities.length,
      sourceLink: "",
      activitiesList: _mockup,
    ),
    ActivityModel(
      icon: AssetsConstants.svgs.materialToys,
      title: _playground.title,
      body: "Ambiente destinado a testes e estudos em geral",
      exercicios: _playground.activities.length,
      sourceLink: "",
      activitiesList: _playground,
    )
  ];

  //Atividades
  static final _logic = ActivitiesScreenData.logic;
  static final _animation = ActivitiesScreenData.animations;
  static final _mockup = ActivitiesScreenData.mockup;
  static final _playground = ActivitiesScreenData.playground;
}
