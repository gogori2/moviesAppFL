import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_infinite_list/bloc/bloc.dart';
import 'package:flutter_infinite_list/models/models.dart';
import 'package:flutter_infinite_list/res/movie_repository.dart';

class MostPopBloc extends Bloc<MostPopBlocEvent, MostPopState> {
  MostPopBloc();

  @override
  Stream<MostPopState> transform(
    Stream<MostPopBlocEvent> events,
    Stream<MostPopState> Function(MostPopBlocEvent event) next,
  ) {
    return super.transform(
      (events as Observable<MostPopBlocEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }

  @override
  get initialState => MostPopUninitialized();

  @override
  Stream<MostPopState> mapEventToState(MostPopBlocEvent event) async* { 
    if (event is FetchMostPopEvent && !_hasReachedMax(currentState)) {
      try {
        if (currentState is MostPopUninitialized) {
          final Data data = await getMostPopular(1);
          
          final posts = data.movies.toList();
          yield MostPopLoaded(posts: posts, hasReachedMax: false, currentPage: 1);
          return;
        }
        if (currentState is MostPopLoaded) {
          final Data data = await getMostPopular(((currentState as MostPopLoaded).currentPage+1));
          final posts = data.movies.toList();
          yield data.totalPages == data.page
              ? MostPopLoaded(
                  posts: (currentState as MostPopLoaded).posts + posts,
                  hasReachedMax: true,
                  currentPage: ((currentState as MostPopLoaded).currentPage+1),
                )
              : MostPopLoaded(
                  posts: (currentState as MostPopLoaded).posts + posts,
                  hasReachedMax: false,
                  currentPage: ((currentState as MostPopLoaded).currentPage+1),
                );
        }
      } catch (_) {
        yield MostPopError();
      }
    }
  }
  bool _hasReachedMax(MostPopState state) =>
      state is MostPopLoaded && state.hasReachedMax;

}
 