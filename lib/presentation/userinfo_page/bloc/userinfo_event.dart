// ignore_for_file: must_be_immutable

part of 'userinfo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Userinfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserinfoEvent extends Equatable {}

/// Event that is dispatched when the Userinfo widget is first created.
class UserinfoInitialEvent extends UserinfoEvent {
  @override
  List<Object?> get props => [];
}
