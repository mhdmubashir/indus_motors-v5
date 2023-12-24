// ignore_for_file: must_be_immutable

part of 'homemain_bloc.dart';

/// Represents the state of Homemain in the application.
class HomemainState extends Equatable {
  HomemainState({this.homemainModelObj});

  HomemainModel? homemainModelObj;

  @override
  List<Object?> get props => [
        homemainModelObj,
      ];
  HomemainState copyWith({HomemainModel? homemainModelObj}) {
    return HomemainState(
      homemainModelObj: homemainModelObj ?? this.homemainModelObj,
    );
  }
}
