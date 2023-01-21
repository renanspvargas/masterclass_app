import 'dart:convert';
import 'package:http/http.dart' as http;

class UsersRemoteDataSource {
  // Explanation for this ip is in the readme
  final _url = 'http://10.0.2.2:3031/users';

  Future<List<dynamic>> getUsers() async {
    final response = await http.get(Uri.parse(_url));
    final json = jsonDecode(response.body) as List;
    return json;
  }
}
