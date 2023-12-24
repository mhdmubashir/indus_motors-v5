// ignore_for_file: must_be_immutable

part of 'jimny_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Jimny widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class JimnyEvent extends Equatable {}

/// Event that is dispatched when the Jimny widget is first created.
class JimnyInitialEvent extends JimnyEvent {
  @override
  List<Object?> get props => [];
}
