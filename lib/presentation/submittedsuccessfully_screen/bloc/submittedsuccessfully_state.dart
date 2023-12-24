// ignore_for_file: must_be_immutable

part of 'submittedsuccessfully_bloc.dart';

/// Represents the state of Submittedsuccessfully in the application.
class SubmittedsuccessfullyState extends Equatable {
  SubmittedsuccessfullyState({this.submittedsuccessfullyModelObj});

  SubmittedsuccessfullyModel? submittedsuccessfullyModelObj;

  @override
  List<Object?> get props => [
        submittedsuccessfullyModelObj,
      ];
  SubmittedsuccessfullyState copyWith(
      {SubmittedsuccessfullyModel? submittedsuccessfullyModelObj}) {
    return SubmittedsuccessfullyState(
      submittedsuccessfullyModelObj:
          submittedsuccessfullyModelObj ?? this.submittedsuccessfullyModelObj,
    );
  }
}
