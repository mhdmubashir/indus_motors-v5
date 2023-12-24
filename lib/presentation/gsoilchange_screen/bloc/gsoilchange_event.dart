// ignore_for_file: must_be_immutable

part of 'gsoilchange_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Gsoilchange widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GsoilchangeEvent extends Equatable {}

/// Event that is dispatched when the Gsoilchange widget is first created.
class GsoilchangeInitialEvent extends GsoilchangeEvent {
  @override
  List<Object?> get props => [];
}
