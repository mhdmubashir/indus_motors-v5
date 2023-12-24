// ignore_for_file: must_be_immutable

part of 'ignis_bloc.dart';

/// Represents the state of Ignis in the application.
class IgnisState extends Equatable {
  IgnisState({this.ignisModelObj});

  IgnisModel? ignisModelObj;

  @override
  List<Object?> get props => [
        ignisModelObj,
      ];
  IgnisState copyWith({IgnisModel? ignisModelObj}) {
    return IgnisState(
      ignisModelObj: ignisModelObj ?? this.ignisModelObj,
    );
  }
}
