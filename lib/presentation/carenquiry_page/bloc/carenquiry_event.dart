// ignore_for_file: must_be_immutable

part of 'carenquiry_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Carenquiry widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CarenquiryEvent extends Equatable {}

/// Event that is dispatched when the Carenquiry widget is first created.
class CarenquiryInitialEvent extends CarenquiryEvent {
  @override
  List<Object?> get props => [];
}
