// ignore_for_file: must_be_immutable

part of 'ciaz_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ciaz widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CiazEvent extends Equatable {}

/// Event that is dispatched when the Ciaz widget is first created.
class CiazInitialEvent extends CiazEvent {
  @override
  List<Object?> get props => [];
}
