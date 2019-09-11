import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_infinite_list/bloc/bloc.dart';
import 'package:flutter_infinite_list/models/models.dart';
import 'package:flutter_infinite_list/res/movie_repository.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc();

  @override
  Stream<DetailState> transform(
    Stream<DetailEvent> events,
    Stream<DetailState> Function(DetailEvent event) next,
  ) {
    return super.transform(
      (events as Observable<DetailEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }

  @override
  get initialState => DetailUninitialized();

  @override
  Stream<DetailState> mapEventToState(DetailEvent event) async* { 
    if (event is FetchDetailEvent) {
      try {
        if (currentState is DetailUninitialized) {
          print ("Poz iz DetailUninitialized");
          // (currentState is DetailUninitialized).movieid =  
          final Detail data = await getDetails(event.movieId);
          final Data dataRec = await getRecommended(event.movieId);
          //print(dataRec);
          final recommend = dataRec.movies.toList();
          yield DetailLoaded(details: data, recommendations: recommend);
          return;
        }
        if (currentState is DetailLoaded) {
          yield  DetailLoaded(
                  details: ((currentState as DetailLoaded).details),
                );
        }
      } catch (_) {
        yield DetailError();
      }
    }
  }
  // bool _hasReachedMax(DetailState state) =>
  //    state is DetailLoaded && state.hasReachedMax;

}
 