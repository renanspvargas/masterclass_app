import 'package:masterclass_app/imports.dart';

abstract class ActivitiesScreenData {
  static final ActivitiesListScreenModel logic = ActivitiesListScreenModel(
    title: "Lógica",
    activities: [],
  );

  static final ActivitiesListScreenModel animations = ActivitiesListScreenModel(
    title: "Animações",
    activities: [
      ActivityPageModel(
        title: "Botão - Animação Implicita",
        navigator: NavigationRoutes.instance.implicitButtonAnimation,
      ),
      ActivityPageModel(
        title: "Lista - Animação Implicita",
        navigator: NavigationRoutes.instance.implicitListAnimation,
      ),
      ActivityPageModel(
        title: "Botão - Animação Controlada",
        navigator: NavigationRoutes.instance.controlledButtonAnimation,
      )
    ],
  );

  static final ActivitiesListScreenModel mockup = ActivitiesListScreenModel(
    title: "Leitura de Mockup",
    activities: [
      ActivityPageModel(
        title: "Money App",
        navigator: NavigationRoutes.instance.mockupMoneyApp,
      ),
      ActivityPageModel(
        title: "Tinder",
        navigator: NavigationRoutes.instance.mockupTinderApp,
      )
    ],
  );

  static final ActivitiesListScreenModel playground = ActivitiesListScreenModel(
    title: "Playground",
    activities: [],
  );
}
