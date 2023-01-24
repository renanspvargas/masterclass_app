import 'package:http/http.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/errors/anime_news_errors.dart';
import 'package:masterclass_app/imports.dart';

class AnimeNewsRemoteDataSource {
  final Client _client;

  AnimeNewsRemoteDataSource([Client? client]) : _client = client ?? Client();

  final String _path = 'https://www.intoxianime.com/?rest_route=/wp/v2/posts';

  Future<List> getNews({required int page, required int perPage}) async {
    final completePath = '$_path&page=$page&per_page=$perPage';
    final response = await _client.get(Uri.parse(completePath));

    if (response.statusCode == 404) {
      throw AnimeNewsOffilineException('404');
    } else if (response.statusCode == 400) {
      throw AnimeNewsBadRequestException('400');
    }

    final json = jsonDecode(response.body) as List;
    return json;
  }
}
