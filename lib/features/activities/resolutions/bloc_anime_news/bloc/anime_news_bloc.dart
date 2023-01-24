import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/bloc/anime_news_events.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/bloc/anime_news_states.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/errors/anime_news_errors.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/models/anime_news_model.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/repos/anime_news_repo.dart';

class AnimeNewsBloc extends Bloc<AnimeNewsEvent, AnimeNewsState> {
  final AnimeNewsRepository _repo;
  final List<AnimeNewsModel> _news = [];
  int _currentPage = 1;
  final _perPage = 10;

  AnimeNewsBloc([repo])
      : _repo = repo ?? AnimeNewsRepository(),
        super(AnimeNewsEmptyState()) {
    on<GetMoreAnimeNewsEvent>(_getMoreAnimeNewsEvent);
    on<GetAnimeNewsEvent>(_getAnimeNewsEvent);
  }

  Future<void> _getAnimeNewsEvent(event, emit) async {
    if (event is! GetMoreAnimeNewsEvent) {
      emit(AnimeNewsLoadingState());
    }

    try {
      _news.addAll(await _repo.getNews(
        page: _currentPage,
        perPage: _perPage,
      ));
      emit(AnimeNewsLoadedState(_news));
    } on AnimeNewsOffilineException catch (e) {
      emit(AnimeNewsErrorState(e.message));
    } on AnimeNewsBadRequestException catch (e) {
      emit(AnimeNewsErrorState(e.message));
    }
  }

  Future<void> _getMoreAnimeNewsEvent(event, emit) async {
    _currentPage = _currentPage + 1;
    await _getAnimeNewsEvent(event, emit);
  }
}
