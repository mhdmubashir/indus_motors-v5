// ignore_for_file: must_be_immutable

part of 'scratchremovel_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Scratchremovel widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScratchremovelEvent extends Equatable {}

/// Event that is dispatched when the Scratchremovel widget is first created.
class ScratchremovelInitialEvent extends ScratchremovelEvent {
  @override
  List<Object?> get props => [];
}
