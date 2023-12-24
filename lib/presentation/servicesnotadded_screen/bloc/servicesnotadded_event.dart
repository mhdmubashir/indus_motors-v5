// ignore_for_file: must_be_immutable

part of 'servicesnotadded_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Servicesnotadded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ServicesnotaddedEvent extends Equatable {}

/// Event that is dispatched when the Servicesnotadded widget is first created.
class ServicesnotaddedInitialEvent extends ServicesnotaddedEvent {
  @override
  List<Object?> get props => [];
}
