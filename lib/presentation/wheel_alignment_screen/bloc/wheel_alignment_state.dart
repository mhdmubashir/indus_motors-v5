// ignore_for_file: must_be_immutable

part of 'wheel_alignment_bloc.dart';

/// Represents the state of WheelAlignment in the application.
class WheelAlignmentState extends Equatable {
  WheelAlignmentState({
    this.nameController,
    this.registerNumberInputController,
    this.wheelAlignmentModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNumberInputController;

  WheelAlignmentModel? wheelAlignmentModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNumberInputController,
        wheelAlignmentModelObj,
      ];
  WheelAlignmentState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNumberInputController,
    WheelAlignmentModel? wheelAlignmentModelObj,
  }) {
    return WheelAlignmentState(
      nameController: nameController ?? this.nameController,
      registerNumberInputController:
          registerNumberInputController ?? this.registerNumberInputController,
      wheelAlignmentModelObj:
          wheelAlignmentModelObj ?? this.wheelAlignmentModelObj,
    );
  }
}
