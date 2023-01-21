import 'package:masterclass_app/imports.dart';

class ActivitiesData {
  static final List<ActivityModel> allActivities = [
    // Logic
    ActivityModel(
      icon: AppSvgs.awesomeBrain,
      title: _logic.title,
      body: "Algoritmo para validação de CPF",
      exercicios: _logic.activities.length,
      sourceLink: "",
      activitiesList: _logic,
    ),

    // Animations
    ActivityModel(
      icon: AppSvgs.awesomeRunning,
      title: _animation.title,
      body: "Estudos sobre animações implícitas e controladas",
      exercicios: _animation.activities.length,
      sourceLink: "",
      activitiesList: _animation,
    ),

    // Mockup
    ActivityModel(
      icon: AppSvgs.awesomeGlasses,
      title: _mockup.title,
      body: "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
      exercicios: _mockup.activities.length,
      sourceLink:
          "https://github.com/renanspvargas/masterclass_app/tree/master/lib/screens/activities/mockup",
      activitiesList: _mockup,
    ),

    // Playground
    ActivityModel(
      icon: AppSvgs.materialToys,
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
