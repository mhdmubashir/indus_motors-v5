// ignore_for_file: must_be_immutable

part of 'acservice_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Acservice widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AcserviceEvent extends Equatable {}

/// Event that is dispatched when the Acservice widget is first created.
class AcserviceInitialEvent extends AcserviceEvent {
  @override
  List<Object?> get props => [];
}
