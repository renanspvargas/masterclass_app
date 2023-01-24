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

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetAnimeNewsEvent());
    _scrollController.addListener(handleScrolling);
  }

  void handleScrolling() {
    if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent) {
      _bloc.add(GetMoreAnimeNewsEvent());
    }
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
              controller: _scrollController,
              itemCount: state.news.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(state.news[index].title),
                  ),
                );
              },
            );
          }

          return child;
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(handleScrolling);
    super.dispose();
  }
}
