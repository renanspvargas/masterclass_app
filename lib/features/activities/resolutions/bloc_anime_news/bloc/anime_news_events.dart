abstract class AnimeNewsEvent {}

class GetAnimeNewsEvent extends AnimeNewsEvent {
  final int perPage;

  GetAnimeNewsEvent({this.perPage = 10});
}

class GetMoreAnimeNewsEvent extends GetAnimeNewsEvent {}
