// ignore_for_file: must_be_immutable

part of 'indussplash_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Indussplash widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IndussplashEvent extends Equatable {}

/// Event that is dispatched when the Indussplash widget is first created.
class IndussplashInitialEvent extends IndussplashEvent {
  @override
  List<Object?> get props => [];
}
