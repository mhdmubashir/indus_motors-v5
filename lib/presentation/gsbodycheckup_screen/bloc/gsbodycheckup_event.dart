// ignore_for_file: must_be_immutable

part of 'gsbodycheckup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Gsbodycheckup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GsbodycheckupEvent extends Equatable {}

/// Event that is dispatched when the Gsbodycheckup widget is first created.
class GsbodycheckupInitialEvent extends GsbodycheckupEvent {
  @override
  List<Object?> get props => [];
}
