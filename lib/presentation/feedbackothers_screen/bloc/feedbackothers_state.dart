// ignore_for_file: must_be_immutable

part of 'feedbackothers_bloc.dart';

/// Represents the state of Feedbackothers in the application.
class FeedbackothersState extends Equatable {
  FeedbackothersState({
    this.writeFeedbackValueController,
    this.feedbackothersModelObj,
  });

  TextEditingController? writeFeedbackValueController;

  FeedbackothersModel? feedbackothersModelObj;

  @override
  List<Object?> get props => [
        writeFeedbackValueController,
        feedbackothersModelObj,
      ];
  FeedbackothersState copyWith({
    TextEditingController? writeFeedbackValueController,
    FeedbackothersModel? feedbackothersModelObj,
  }) {
    return FeedbackothersState(
      writeFeedbackValueController:
          writeFeedbackValueController ?? this.writeFeedbackValueController,
      feedbackothersModelObj:
          feedbackothersModelObj ?? this.feedbackothersModelObj,
    );
  }
}
