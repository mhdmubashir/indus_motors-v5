// ignore_for_file: must_be_immutable

part of 'brezza_bloc.dart';

/// Represents the state of Brezza in the application.
class BrezzaState extends Equatable {
  BrezzaState({this.brezzaModelObj});

  BrezzaModel? brezzaModelObj;

  @override
  List<Object?> get props => [
        brezzaModelObj,
      ];
  BrezzaState copyWith({BrezzaModel? brezzaModelObj}) {
    return BrezzaState(
      brezzaModelObj: brezzaModelObj ?? this.brezzaModelObj,
    );
  }
}
