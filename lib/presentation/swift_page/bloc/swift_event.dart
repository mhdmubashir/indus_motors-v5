// ignore_for_file: must_be_immutable

part of 'swift_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Swift widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SwiftEvent extends Equatable {}

/// Event that is dispatched when the Swift widget is first created.
class SwiftInitialEvent extends SwiftEvent {
  @override
  List<Object?> get props => [];
}
