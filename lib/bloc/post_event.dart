import 'package:equatable/equatable.dart';

abstract class PostEvent extends Equatable {}

class FetchTopRatedEvent extends PostEvent {
  @override
  String toString() => 'FetchTopRated';
}
