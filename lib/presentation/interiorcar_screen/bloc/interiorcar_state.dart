// ignore_for_file: must_be_immutable

part of 'interiorcar_bloc.dart';

/// Represents the state of Interiorcar in the application.
class InteriorcarState extends Equatable {
  InteriorcarState({
    this.nameController,
    this.registerNumberInputController,
    this.serviceTypeInputController,
    this.interiorcarModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNumberInputController;

  TextEditingController? serviceTypeInputController;

  InteriorcarModel? interiorcarModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNumberInputController,
        serviceTypeInputController,
        interiorcarModelObj,
      ];
  InteriorcarState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNumberInputController,
    TextEditingController? serviceTypeInputController,
    InteriorcarModel? interiorcarModelObj,
  }) {
    return InteriorcarState(
      nameController: nameController ?? this.nameController,
      registerNumberInputController:
          registerNumberInputController ?? this.registerNumberInputController,
      serviceTypeInputController:
          serviceTypeInputController ?? this.serviceTypeInputController,
      interiorcarModelObj: interiorcarModelObj ?? this.interiorcarModelObj,
    );
  }
}
