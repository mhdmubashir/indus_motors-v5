// ignore_for_file: must_be_immutable

part of 'gsperoidiccheckup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Gsperoidiccheckup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GsperoidiccheckupEvent extends Equatable {}

/// Event that is dispatched when the Gsperoidiccheckup widget is first created.
class GsperoidiccheckupInitialEvent extends GsperoidiccheckupEvent {
  @override
  List<Object?> get props => [];
}
