// ignore_for_file: must_be_immutable

part of 'wheel_alignment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WheelAlignment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WheelAlignmentEvent extends Equatable {}

/// Event that is dispatched when the WheelAlignment widget is first created.
class WheelAlignmentInitialEvent extends WheelAlignmentEvent {
  @override
  List<Object?> get props => [];
}
