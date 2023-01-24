// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/models/anime_news_model.dart';

abstract class AnimeNewsState {}

class AnimeNewsErrorState extends AnimeNewsState {
  final String message;

  AnimeNewsErrorState(this.message);
}

class AnimeNewsLoadingState extends AnimeNewsState {}

class AnimeNewsLoadedState extends AnimeNewsState {
  final List<AnimeNewsModel> news;

  AnimeNewsLoadedState(this.news);
}

class AnimeNewsEmptyState extends AnimeNewsLoadedState {
  AnimeNewsEmptyState() : super([]);
}
