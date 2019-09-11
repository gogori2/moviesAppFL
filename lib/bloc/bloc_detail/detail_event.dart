import 'package:equatable/equatable.dart';

abstract class DetailEvent extends Equatable {
    DetailEvent([List props = const []]) : super(props);
}

class FetchDetailEvent extends DetailEvent {

  final int movieId;
  FetchDetailEvent(this.movieId) : super([movieId]);
  @override
  String toString() => 'FetchDetailEvent {movieId: $movieId}';
}
