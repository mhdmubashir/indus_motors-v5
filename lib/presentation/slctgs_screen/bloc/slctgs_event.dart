// ignore_for_file: must_be_immutable

part of 'slctgs_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Slctgs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SlctgsEvent extends Equatable {}

/// Event that is dispatched when the Slctgs widget is first created.
class SlctgsInitialEvent extends SlctgsEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends SlctgsEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
