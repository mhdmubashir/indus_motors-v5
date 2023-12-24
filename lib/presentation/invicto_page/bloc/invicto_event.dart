// ignore_for_file: must_be_immutable

part of 'invicto_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Invicto widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvictoEvent extends Equatable {}

/// Event that is dispatched when the Invicto widget is first created.
class InvictoInitialEvent extends InvictoEvent {
  @override
  List<Object?> get props => [];
}
