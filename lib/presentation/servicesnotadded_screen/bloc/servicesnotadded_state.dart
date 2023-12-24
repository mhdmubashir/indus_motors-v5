// ignore_for_file: must_be_immutable

part of 'servicesnotadded_bloc.dart';

/// Represents the state of Servicesnotadded in the application.
class ServicesnotaddedState extends Equatable {
  ServicesnotaddedState({this.servicesnotaddedModelObj});

  ServicesnotaddedModel? servicesnotaddedModelObj;

  @override
  List<Object?> get props => [
        servicesnotaddedModelObj,
      ];
  ServicesnotaddedState copyWith(
      {ServicesnotaddedModel? servicesnotaddedModelObj}) {
    return ServicesnotaddedState(
      servicesnotaddedModelObj:
          servicesnotaddedModelObj ?? this.servicesnotaddedModelObj,
    );
  }
}
