// ignore_for_file: must_be_immutable

part of 'celerio_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Celerio widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CelerioEvent extends Equatable {}

/// Event that is dispatched when the Celerio widget is first created.
class CelerioInitialEvent extends CelerioEvent {
  @override
  List<Object?> get props => [];
}
