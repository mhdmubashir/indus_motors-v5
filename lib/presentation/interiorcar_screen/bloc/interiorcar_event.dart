// ignore_for_file: must_be_immutable

part of 'interiorcar_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Interiorcar widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InteriorcarEvent extends Equatable {}

/// Event that is dispatched when the Interiorcar widget is first created.
class InteriorcarInitialEvent extends InteriorcarEvent {
  @override
  List<Object?> get props => [];
}
