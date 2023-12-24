// ignore_for_file: must_be_immutable

part of 'submittedsuccessfully_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Submittedsuccessfully widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SubmittedsuccessfullyEvent extends Equatable {}

/// Event that is dispatched when the Submittedsuccessfully widget is first created.
class SubmittedsuccessfullyInitialEvent extends SubmittedsuccessfullyEvent {
  @override
  List<Object?> get props => [];
}
