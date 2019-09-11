import 'package:equatable/equatable.dart';
import 'package:flutter_infinite_list/models/models.dart';

abstract class MostPopState extends Equatable {
  MostPopState([List props = const []]) : super(props);
}

class MostPopUninitialized extends MostPopState {
  @override
  String toString() => 'MostPopUninitialized';
}

class MostPopError extends MostPopState {
  @override
  String toString() => 'MostPopError';
}

class MostPopLoaded extends MostPopState {
  final List<Movies> posts;
  final bool hasReachedMax;
  final int currentPage;

  MostPopLoaded({
    this.posts,
    this.hasReachedMax,
    this.currentPage,
  }) : super([posts, hasReachedMax, currentPage]);

  MostPopLoaded copyWith({
    List<Movies> posts,
    bool hasReachedMax,
    int currentPage,
  }) {
    return MostPopLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  String toString() =>
      'MostPopLoaded { posts: ${posts.length}, hasReachedMax: $hasReachedMax, currentPage: $currentPage }';
}
