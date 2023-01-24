import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/bloc/anime_news_bloc.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/bloc/anime_news_events.dart';
import 'package:masterclass_app/features/activities/resolutions/bloc_anime_news/bloc/anime_news_states.dart';
import 'package:masterclass_app/imports.dart';

class AnimeNewsScreen extends StatefulWidget {
  const AnimeNewsScreen({super.key});

  @override
  State<AnimeNewsScreen> createState() => _AnimeNewsScreenState();
}

class _AnimeNewsScreenState extends State<AnimeNewsScreen> {
  final _bloc = AnimeNewsBloc();

  @override
  void initState() {
    _bloc.add(GetAnimeNewsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<AnimeNewsBloc, AnimeNewsState>(
        bloc: _bloc,
        builder: (context, state) {
          Widget child = Container();

          if (state is AnimeNewsErrorState) {
            child = Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.message),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      _bloc.add(GetAnimeNewsEvent());
                    },
                    child: const Text('tentar novamente'),
                  ),
                ],
              ),
            );
          }

          if (state is AnimeNewsLoadingState) {
            child = const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is AnimeNewsLoadedState) {
            child = ListView.builder(
              itemCount: state.news.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(state.news[index].title),
                );
              },
            );
          }

          if (state is AnimeNewsLoadedMoreState) {
            child = const Center(
              child: Text('To be implmented'),
            );
          }

          return child;
        },
      ),
    );
  }
}
