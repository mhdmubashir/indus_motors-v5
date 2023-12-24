// ignore_for_file: must_be_immutable

part of 'wagnorbsfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Wagnorbsfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WagnorbsfourEvent extends Equatable {}

/// Event that is dispatched when the Wagnorbsfour widget is first created.
class WagnorbsfourInitialEvent extends WagnorbsfourEvent {
  @override
  List<Object?> get props => [];
}
