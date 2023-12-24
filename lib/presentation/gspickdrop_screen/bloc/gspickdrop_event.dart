// ignore_for_file: must_be_immutable

part of 'gspickdrop_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Gspickdrop widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GspickdropEvent extends Equatable {}

/// Event that is dispatched when the Gspickdrop widget is first created.
class GspickdropInitialEvent extends GspickdropEvent {
  @override
  List<Object?> get props => [];
}
