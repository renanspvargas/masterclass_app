class UsersLocalDataSource {
  List<dynamic> getUsers() {
    // lets pretend it goes to my local db and return this
    return _localUsers;
  }

  final List<Map<String, dynamic>> _localUsers = [
    {'id': '1', 'name': 'User from local storage'}
  ];
}
