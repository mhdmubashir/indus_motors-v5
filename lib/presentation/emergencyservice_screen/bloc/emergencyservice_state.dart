// ignore_for_file: must_be_immutable

part of 'emergencyservice_bloc.dart';

/// Represents the state of Emergencyservice in the application.
class EmergencyserviceState extends Equatable {
  EmergencyserviceState({
    this.nameController,
    this.registerNumberPromptController,
    this.emergencyserviceModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNumberPromptController;

  EmergencyserviceModel? emergencyserviceModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNumberPromptController,
        emergencyserviceModelObj,
      ];
  EmergencyserviceState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNumberPromptController,
    EmergencyserviceModel? emergencyserviceModelObj,
  }) {
    return EmergencyserviceState(
      nameController: nameController ?? this.nameController,
      registerNumberPromptController:
          registerNumberPromptController ?? this.registerNumberPromptController,
      emergencyserviceModelObj:
          emergencyserviceModelObj ?? this.emergencyserviceModelObj,
    );
  }
}
