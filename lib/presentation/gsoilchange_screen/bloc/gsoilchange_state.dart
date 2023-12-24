// ignore_for_file: must_be_immutable

part of 'gsoilchange_bloc.dart';

/// Represents the state of Gsoilchange in the application.
class GsoilchangeState extends Equatable {
  GsoilchangeState({
    this.nameController,
    this.registerNoPlaceholderController,
    this.serviceTypeValueController,
    this.gsoilchangeModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNoPlaceholderController;

  TextEditingController? serviceTypeValueController;

  GsoilchangeModel? gsoilchangeModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNoPlaceholderController,
        serviceTypeValueController,
        gsoilchangeModelObj,
      ];
  GsoilchangeState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNoPlaceholderController,
    TextEditingController? serviceTypeValueController,
    GsoilchangeModel? gsoilchangeModelObj,
  }) {
    return GsoilchangeState(
      nameController: nameController ?? this.nameController,
      registerNoPlaceholderController: registerNoPlaceholderController ??
          this.registerNoPlaceholderController,
      serviceTypeValueController:
          serviceTypeValueController ?? this.serviceTypeValueController,
      gsoilchangeModelObj: gsoilchangeModelObj ?? this.gsoilchangeModelObj,
    );
  }
}
