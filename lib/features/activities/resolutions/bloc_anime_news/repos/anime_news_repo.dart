import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/datasource/anime_news_remote_datasource.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/models/anime_news_model.dart';

class AnimeNewsRepository {
  final AnimeNewsRemoteDataSource _remoteDataSource;

  AnimeNewsRepository([AnimeNewsRemoteDataSource? remoteDataSource])
      : _remoteDataSource = remoteDataSource ?? AnimeNewsRemoteDataSource();

  Future<List<AnimeNewsModel>> getNews({
    required int page,
    required int perPage,
  }) async {
    final json = await _remoteDataSource.getNews(page: page, perPage: perPage);
    final List<AnimeNewsModel> news =
        json.map((e) => AnimeNewsModel.fromJson(e)).toList();
    return news;
  }
}
