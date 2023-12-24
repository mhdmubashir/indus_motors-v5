// ignore_for_file: must_be_immutable

part of 'slctgs_bloc.dart';

/// Represents the state of Slctgs in the application.
class SlctgsState extends Equatable {
  SlctgsState({
    this.nameController,
    this.registerNoPromptController,
    this.selectedDropDownValue,
    this.slctgsModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNoPromptController;

  SelectionPopupModel? selectedDropDownValue;

  SlctgsModel? slctgsModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNoPromptController,
        selectedDropDownValue,
        slctgsModelObj,
      ];
  SlctgsState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNoPromptController,
    SelectionPopupModel? selectedDropDownValue,
    SlctgsModel? slctgsModelObj,
  }) {
    return SlctgsState(
      nameController: nameController ?? this.nameController,
      registerNoPromptController:
          registerNoPromptController ?? this.registerNoPromptController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      slctgsModelObj: slctgsModelObj ?? this.slctgsModelObj,
    );
  }
}
