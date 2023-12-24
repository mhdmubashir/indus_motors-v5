// ignore_for_file: must_be_immutable

part of 'ertiga_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ertiga widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ErtigaEvent extends Equatable {}

/// Event that is dispatched when the Ertiga widget is first created.
class ErtigaInitialEvent extends ErtigaEvent {
  @override
  List<Object?> get props => [];
}
