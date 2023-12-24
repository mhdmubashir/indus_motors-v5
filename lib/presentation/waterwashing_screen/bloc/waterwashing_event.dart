// ignore_for_file: must_be_immutable

part of 'waterwashing_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Waterwashing widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WaterwashingEvent extends Equatable {}

/// Event that is dispatched when the Waterwashing widget is first created.
class WaterwashingInitialEvent extends WaterwashingEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends WaterwashingEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
