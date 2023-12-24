// ignore_for_file: must_be_immutable

part of 'feedbackothers_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Feedbackothers widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FeedbackothersEvent extends Equatable {}

/// Event that is dispatched when the Feedbackothers widget is first created.
class FeedbackothersInitialEvent extends FeedbackothersEvent {
  @override
  List<Object?> get props => [];
}
