// ignore_for_file: must_be_immutable

part of 'feedbacksuggestion_bloc.dart';

/// Represents the state of Feedbacksuggestion in the application.
class FeedbacksuggestionState extends Equatable {
  FeedbacksuggestionState({
    this.writeFeedbackValueController,
    this.feedbacksuggestionModelObj,
  });

  TextEditingController? writeFeedbackValueController;

  FeedbacksuggestionModel? feedbacksuggestionModelObj;

  @override
  List<Object?> get props => [
        writeFeedbackValueController,
        feedbacksuggestionModelObj,
      ];
  FeedbacksuggestionState copyWith({
    TextEditingController? writeFeedbackValueController,
    FeedbacksuggestionModel? feedbacksuggestionModelObj,
  }) {
    return FeedbacksuggestionState(
      writeFeedbackValueController:
          writeFeedbackValueController ?? this.writeFeedbackValueController,
      feedbacksuggestionModelObj:
          feedbacksuggestionModelObj ?? this.feedbacksuggestionModelObj,
    );
  }
}
