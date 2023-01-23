import 'package:http/http.dart';
import 'package:masterclass_app/imports.dart';

class AnimeNewsRemoteDataSource {
  final Client _client;

  AnimeNewsRemoteDataSource([Client? client]) : _client = client ?? Client();

  final String _path = 'https://www.intoxianime.com/?rest_route=/wp/v2/posts';

  Future<List> getNews(int page, int perPage) async {
    final completePath = '$_path&page=$page&per_page=$perPage';
    final response = await _client.get(Uri.parse(completePath));
    final json = jsonDecode(response.body) as List;
    return json;
  }
}
