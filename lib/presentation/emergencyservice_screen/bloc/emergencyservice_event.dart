// ignore_for_file: must_be_immutable

part of 'emergencyservice_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Emergencyservice widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmergencyserviceEvent extends Equatable {}

/// Event that is dispatched when the Emergencyservice widget is first created.
class EmergencyserviceInitialEvent extends EmergencyserviceEvent {
  @override
  List<Object?> get props => [];
}
