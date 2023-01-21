class ActivityPageModel {
  final String title;
  final String navigator;
  final Object? args;

  ActivityPageModel({
    required this.title,
    required this.navigator,
    this.args,
  });
}
