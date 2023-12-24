// ignore_for_file: must_be_immutable

part of 'brezza_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Brezza widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrezzaEvent extends Equatable {}

/// Event that is dispatched when the Brezza widget is first created.
class BrezzaInitialEvent extends BrezzaEvent {
  @override
  List<Object?> get props => [];
}
