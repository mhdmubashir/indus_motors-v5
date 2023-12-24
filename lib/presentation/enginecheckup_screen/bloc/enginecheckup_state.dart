// ignore_for_file: must_be_immutable

part of 'enginecheckup_bloc.dart';

/// Represents the state of Enginecheckup in the application.
class EnginecheckupState extends Equatable {
  EnginecheckupState({
    this.nameController,
    this.registerNumberInputController,
    this.enginecheckupModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNumberInputController;

  EnginecheckupModel? enginecheckupModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNumberInputController,
        enginecheckupModelObj,
      ];
  EnginecheckupState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNumberInputController,
    EnginecheckupModel? enginecheckupModelObj,
  }) {
    return EnginecheckupState(
      nameController: nameController ?? this.nameController,
      registerNumberInputController:
          registerNumberInputController ?? this.registerNumberInputController,
      enginecheckupModelObj:
          enginecheckupModelObj ?? this.enginecheckupModelObj,
    );
  }
}
