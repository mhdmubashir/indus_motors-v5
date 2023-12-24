// ignore_for_file: must_be_immutable

part of 'carspa_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Carspa widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CarspaEvent extends Equatable {}

/// Event that is dispatched when the Carspa widget is first created.
class CarspaInitialEvent extends CarspaEvent {
  @override
  List<Object?> get props => [];
}
