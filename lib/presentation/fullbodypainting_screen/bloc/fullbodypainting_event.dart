// ignore_for_file: must_be_immutable

part of 'fullbodypainting_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fullbodypainting widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FullbodypaintingEvent extends Equatable {}

/// Event that is dispatched when the Fullbodypainting widget is first created.
class FullbodypaintingInitialEvent extends FullbodypaintingEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends FullbodypaintingEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
