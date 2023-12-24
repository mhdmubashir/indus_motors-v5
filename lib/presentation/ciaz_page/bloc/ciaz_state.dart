// ignore_for_file: must_be_immutable

part of 'ciaz_bloc.dart';

/// Represents the state of Ciaz in the application.
class CiazState extends Equatable {
  CiazState({this.ciazModelObj});

  CiazModel? ciazModelObj;

  @override
  List<Object?> get props => [
        ciazModelObj,
      ];
  CiazState copyWith({CiazModel? ciazModelObj}) {
    return CiazState(
      ciazModelObj: ciazModelObj ?? this.ciazModelObj,
    );
  }
}
