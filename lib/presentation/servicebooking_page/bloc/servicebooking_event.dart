// ignore_for_file: must_be_immutable

part of 'servicebooking_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Servicebooking widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ServicebookingEvent extends Equatable {}

/// Event that is dispatched when the Servicebooking widget is first created.
class ServicebookingInitialEvent extends ServicebookingEvent {
  @override
  List<Object?> get props => [];
}
