import 'package:equatable/equatable.dart';

import 'package:flutter_infinite_list/models/models.dart';

abstract class PostState extends Equatable {
  PostState([List props = const []]) : super(props);
}

class PostUninitialized extends PostState {
  @override
  String toString() => 'PostUninitialized';
}

class PostError extends PostState {
  @override
  String toString() => 'PostError';
}

class PostLoaded extends PostState {
  final List<Movies> posts;
  final bool hasReachedMax;
  final int currentPage;

  PostLoaded({
    this.posts,
    this.hasReachedMax,
    this.currentPage,
  }) : super([posts, hasReachedMax, currentPage]);

  PostLoaded copyWith({
    List<Movies> posts,
    bool hasReachedMax,
    int currentPage,
  }) {

    return PostLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  String toString() =>
      'PostLoaded { posts: ${posts.length}, hasReachedMax: $hasReachedMax, currentPage: $currentPage }';
}
