import 'package:equatable/equatable.dart';

import 'package:flutter_infinite_list/models/models.dart';

abstract class DetailState extends Equatable {
  DetailState([List props = const []]) : super(props);
}

class DetailUninitialized extends DetailState {
  @override
  String toString() => 'DetailUninitialized';
}

class DetailError extends DetailState {
  @override
  String toString() => 'DetailError';
}

class DetailLoaded extends DetailState {
  final Detail details;
  final List<Movies> recommendations; 
  DetailLoaded({
     this.details,
     this.recommendations
  }) : super([details, recommendations]);

  DetailLoaded copyWith({
    Detail details,
    List<Movies> recommendations,
  }) {
    return DetailLoaded(
      details: details ?? this.details,
      recommendations: recommendations ?? this.recommendations,
    );
  }

  @override
  String toString() =>
      'DetailsLoaded { details } { recommendations } }';
}
