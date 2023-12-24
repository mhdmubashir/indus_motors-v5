// ignore_for_file: must_be_immutable

part of 'waterwashing_bloc.dart';

/// Represents the state of Waterwashing in the application.
class WaterwashingState extends Equatable {
  WaterwashingState({
    this.nameController,
    this.registerNoPromptController,
    this.selectedDropDownValue,
    this.waterwashingModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNoPromptController;

  SelectionPopupModel? selectedDropDownValue;

  WaterwashingModel? waterwashingModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNoPromptController,
        selectedDropDownValue,
        waterwashingModelObj,
      ];
  WaterwashingState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNoPromptController,
    SelectionPopupModel? selectedDropDownValue,
    WaterwashingModel? waterwashingModelObj,
  }) {
    return WaterwashingState(
      nameController: nameController ?? this.nameController,
      registerNoPromptController:
          registerNoPromptController ?? this.registerNoPromptController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      waterwashingModelObj: waterwashingModelObj ?? this.waterwashingModelObj,
    );
  }
}
