import 'package:masterclass_app/imports.dart';

class UsersRepository {
  final _remote = UsersRemoteDataSource();
  final _local = UsersLocalDataSource();

  Future<List<DesignPatternCommonModel>> fetchUsers() async {
    List<DesignPatternCommonModel> users = [];
    try {
      final json = await _remote.getUsers();
      users = json.map((e) => DesignPatternCommonModel.fromJson(e)).toList();
    } catch (e) {
      final json = _local.getUsers();
      users = json.map((e) => DesignPatternCommonModel.fromJson(e)).toList();
    }

    return users;
  }
}
