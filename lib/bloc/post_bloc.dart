import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_infinite_list/bloc/bloc.dart';
import 'package:flutter_infinite_list/models/models.dart';
import 'package:flutter_infinite_list/res/movie_repository.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc();

  @override
  Stream<PostState> transform(
    Stream<PostEvent> events,
    Stream<PostState> Function(PostEvent event) next,
  ) {
    return super.transform(
      (events as Observable<PostEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }

  @override
  get initialState => PostUninitialized();

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* { 
    if (event is FetchTopRatedEvent && !_hasReachedMax(currentState)) {
      try {
        if (currentState is PostUninitialized) {
          final Data data = await getTopRated(359);
          final posts = data.movies.toList();
          yield PostLoaded(posts: posts, hasReachedMax: false, currentPage: 359);
          return;
        }
        if (currentState is PostLoaded) {
          final Data data = await getTopRated(((currentState as PostLoaded).currentPage+1));
          final posts = data.movies.toList();
          yield data.totalPages == data.page
              ? PostLoaded(
                  posts: (currentState as PostLoaded).posts + posts,
                  hasReachedMax: true,
                  currentPage: ((currentState as PostLoaded).currentPage+1),
                )
              : PostLoaded(
                  posts: (currentState as PostLoaded).posts + posts,
                  hasReachedMax: false,
                  currentPage: ((currentState as PostLoaded).currentPage+1),
                );
        }
      } catch (_) {
        yield PostError();
      }
    }
  }

  bool _hasReachedMax(PostState state) =>
      state is PostLoaded && state.hasReachedMax;
}
 