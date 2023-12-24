// ignore_for_file: must_be_immutable

part of 'selectgnrlsrv_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Selectgnrlsrv widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectgnrlsrvEvent extends Equatable {}

/// Event that is dispatched when the Selectgnrlsrv widget is first created.
class SelectgnrlsrvInitialEvent extends SelectgnrlsrvEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends SelectgnrlsrvEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
