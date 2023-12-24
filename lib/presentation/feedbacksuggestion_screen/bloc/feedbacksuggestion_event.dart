// ignore_for_file: must_be_immutable

part of 'feedbacksuggestion_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Feedbacksuggestion widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FeedbacksuggestionEvent extends Equatable {}

/// Event that is dispatched when the Feedbacksuggestion widget is first created.
class FeedbacksuggestionInitialEvent extends FeedbacksuggestionEvent {
  @override
  List<Object?> get props => [];
}
