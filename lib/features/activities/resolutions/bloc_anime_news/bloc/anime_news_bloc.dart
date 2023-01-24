import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/bloc/anime_news_events.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/bloc/anime_news_states.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/errors/anime_news_errors.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/repos/anime_news_repo.dart';

class AnimeNewsBloc extends Bloc<AnimeNewsEvent, AnimeNewsState> {
  final AnimeNewsRepository _repo;
  int _currentPage = 1;

  AnimeNewsBloc([repo])
      : _repo = repo ?? AnimeNewsRepository(),
        super(AnimeNewsEmptyState()) {
    on<GetMoreAnimeNewsEvent>(_getMoreAnimeNewsEvent);
    on<GetAnimeNewsEvent>(_getAnimeNewsEvent);
  }

  Future<void> _getAnimeNewsEvent(GetAnimeNewsEvent event, emit) async {
    emit(AnimeNewsLoadingState());

    try {
      final news = await _repo.getNews(
        page: _currentPage,
        perPage: event.perPage,
      );
      emit(AnimeNewsLoadedState(news));
    } on AnimeNewsOffilineException catch (e) {
      emit(AnimeNewsErrorState(e.message));
    } on AnimeNewsBadRequestException catch (e) {
      emit(AnimeNewsErrorState(e.message));
    }
  }

  Future<void> _getMoreAnimeNewsEvent(event, emit) async {
    _currentPage = _currentPage + 1;
    _getAnimeNewsEvent(event, emit);
  }
}
