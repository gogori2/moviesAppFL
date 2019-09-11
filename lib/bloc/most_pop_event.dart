import 'package:equatable/equatable.dart';

abstract class MostPopBlocEvent extends Equatable {}

class FetchMostPopEvent extends MostPopBlocEvent {
  @override
  String toString() => 'FetchMostPopEvent';
}
