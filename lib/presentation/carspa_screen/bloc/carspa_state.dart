// ignore_for_file: must_be_immutable

part of 'carspa_bloc.dart';

/// Represents the state of Carspa in the application.
class CarspaState extends Equatable {
  CarspaState({
    this.nameController,
    this.registerNoPlaceholderController,
    this.carspaModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNoPlaceholderController;

  CarspaModel? carspaModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNoPlaceholderController,
        carspaModelObj,
      ];
  CarspaState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNoPlaceholderController,
    CarspaModel? carspaModelObj,
  }) {
    return CarspaState(
      nameController: nameController ?? this.nameController,
      registerNoPlaceholderController: registerNoPlaceholderController ??
          this.registerNoPlaceholderController,
      carspaModelObj: carspaModelObj ?? this.carspaModelObj,
    );
  }
}
