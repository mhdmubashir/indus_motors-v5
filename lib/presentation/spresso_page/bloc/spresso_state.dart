// ignore_for_file: must_be_immutable

part of 'spresso_bloc.dart';

/// Represents the state of Spresso in the application.
class SpressoState extends Equatable {
  SpressoState({this.spressoModelObj});

  SpressoModel? spressoModelObj;

  @override
  List<Object?> get props => [
        spressoModelObj,
      ];
  SpressoState copyWith({SpressoModel? spressoModelObj}) {
    return SpressoState(
      spressoModelObj: spressoModelObj ?? this.spressoModelObj,
    );
  }
}
