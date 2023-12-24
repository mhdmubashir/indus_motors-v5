// ignore_for_file: must_be_immutable

part of 'homemain_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Homemain widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomemainEvent extends Equatable {}

/// Event that is dispatched when the Homemain widget is first created.
class HomemainInitialEvent extends HomemainEvent {
  @override
  List<Object?> get props => [];
}
