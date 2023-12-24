// ignore_for_file: must_be_immutable

part of 'enginecheckup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Enginecheckup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EnginecheckupEvent extends Equatable {}

/// Event that is dispatched when the Enginecheckup widget is first created.
class EnginecheckupInitialEvent extends EnginecheckupEvent {
  @override
  List<Object?> get props => [];
}
