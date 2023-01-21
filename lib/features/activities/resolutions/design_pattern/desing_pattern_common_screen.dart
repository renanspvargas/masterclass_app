import 'package:masterclass_app/imports.dart';

class DesingPatternCommonScreen extends StatefulWidget {
  final DesingPatternScreenActivity activity;

  DesingPatternCommonScreen({required this.activity, super.key});

  @override
  State<DesingPatternCommonScreen> createState() =>
      _DesingPatternCommonScreenState();
}

class _DesingPatternCommonScreenState extends State<DesingPatternCommonScreen> {
  final _usersStore = UsersStore();
  final _productsStore = ProductsStore();

  get _currentPattern {
    switch (widget.activity) {
      case DesingPatternScreenActivity.service:
        return _productsStore;
      case DesingPatternScreenActivity.repository:
        return _usersStore;
    }
  }

  @override
  void initState() {
    _usersStore.getUsers();
    _productsStore.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedBuilder(
          animation: _currentPattern,
          builder: (_, __) {
            return ListView.builder(
                itemCount: _currentPattern.state.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(_currentPattern.state[index].name),
                      subtitle: Text(_currentPattern.state[index].id),
                    ),
                  );
                });
          }),
    );
  }
}

enum DesingPatternScreenActivity { service, repository }
