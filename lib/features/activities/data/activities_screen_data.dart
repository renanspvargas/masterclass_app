import 'package:masterclass_app/imports.dart';

class ActivitiesScreenData {
  static final ActivitiesListScreenModel designPattern =
      ActivitiesListScreenModel(
    title: "Design Pattern",
    activities: [
      ActivityPageModel(
        title: "Service",
        navigator: AppRoutes.servicePattern,
      ),
      ActivityPageModel(
        title: "Repository",
        navigator: AppRoutes.repositoryPattern,
      ),
    ],
  );

  static final ActivitiesListScreenModel logic = ActivitiesListScreenModel(
    title: "Lógica",
    activities: [
      ActivityPageModel(
        title: "Validador de CPF",
        navigator: AppRoutes.cpfValidator,
      ),
    ],
  );

  static final ActivitiesListScreenModel animations = ActivitiesListScreenModel(
    title: "Animações",
    activities: [
      ActivityPageModel(
        title: "Botão - Animação Implicita",
        navigator: AppRoutes.implicitButtonAnimation,
      ),
      ActivityPageModel(
        title: "Lista - Animação Implicita",
        navigator: AppRoutes.implicitListAnimation,
      ),
      ActivityPageModel(
        title: "Botão - Animação Controlada",
        navigator: AppRoutes.controlledButtonAnimation,
      )
    ],
  );

  static final ActivitiesListScreenModel mockup = ActivitiesListScreenModel(
    title: "Leitura de Mockup",
    activities: [
      ActivityPageModel(
        title: "Money App",
        navigator: AppRoutes.mockupMoneyApp,
      ),
      ActivityPageModel(
        title: "Tinder",
        navigator: AppRoutes.mockupTinderApp,
      )
    ],
  );

  static final ActivitiesListScreenModel playground = ActivitiesListScreenModel(
    title: "Playground",
    activities: [],
  );
}
