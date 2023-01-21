import 'package:masterclass_app/imports.dart';

class UsersStore extends ChangeNotifier {
  var state = <DesignPatternCommonModel>[];

  final repo = UsersRepository();

  Future<void> getUsers() async {
    state = await repo.fetchUsers();
    notifyListeners();
  }
}
