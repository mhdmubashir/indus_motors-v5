// ignore_for_file: must_be_immutable

part of 'ignis_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ignis widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IgnisEvent extends Equatable {}

/// Event that is dispatched when the Ignis widget is first created.
class IgnisInitialEvent extends IgnisEvent {
  @override
  List<Object?> get props => [];
}
