// ignore_for_file: must_be_immutable

part of 'gsperoidiccheckup_bloc.dart';

/// Represents the state of Gsperoidiccheckup in the application.
class GsperoidiccheckupState extends Equatable {
  GsperoidiccheckupState({
    this.nameController,
    this.registerNumberInputController,
    this.serviceTypeValueController,
    this.gsperoidiccheckupModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNumberInputController;

  TextEditingController? serviceTypeValueController;

  GsperoidiccheckupModel? gsperoidiccheckupModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNumberInputController,
        serviceTypeValueController,
        gsperoidiccheckupModelObj,
      ];
  GsperoidiccheckupState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNumberInputController,
    TextEditingController? serviceTypeValueController,
    GsperoidiccheckupModel? gsperoidiccheckupModelObj,
  }) {
    return GsperoidiccheckupState(
      nameController: nameController ?? this.nameController,
      registerNumberInputController:
          registerNumberInputController ?? this.registerNumberInputController,
      serviceTypeValueController:
          serviceTypeValueController ?? this.serviceTypeValueController,
      gsperoidiccheckupModelObj:
          gsperoidiccheckupModelObj ?? this.gsperoidiccheckupModelObj,
    );
  }
}
