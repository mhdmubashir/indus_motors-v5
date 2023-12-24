// ignore_for_file: must_be_immutable

part of 'spresso_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Spresso widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SpressoEvent extends Equatable {}

/// Event that is dispatched when the Spresso widget is first created.
class SpressoInitialEvent extends SpressoEvent {
  @override
  List<Object?> get props => [];
}
