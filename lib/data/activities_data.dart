import 'package:masterclass_app/imports.dart';

class ActivitiesData {
  static List<Activity> allActivities() {
    return [
      Activity(
        icon: AssetsConstants.svgs.awesomeBrain,
        title: "Lógica",
        body: "Algoritmo para validação de CPF",
        exercicios: 2,
        sourceLink: "",
      ),
      Activity(
        icon: AssetsConstants.svgs.awesomeRunning,
        title: "Animações",
        body: "Estudos sobre animações implícitas e controladas",
        exercicios: 4,
        sourceLink: "",
      ),
      Activity(
        icon: AssetsConstants.svgs.awesomeGlasses,
        title: "Leitura de Mockup",
        body:
            "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
        exercicios: 2,
        sourceLink: "",
      ),
      Activity(
        icon: AssetsConstants.svgs.materialToys,
        title: "Playground",
        body: "Ambiente destinado a testes e estudos em geral",
        exercicios: 0,
        sourceLink: "",
      )
    ];
  }
}
