// ignore_for_file: must_be_immutable

part of 'fullbodypainting_bloc.dart';

/// Represents the state of Fullbodypainting in the application.
class FullbodypaintingState extends Equatable {
  FullbodypaintingState({
    this.nameController,
    this.registerNoInputController,
    this.selectedDropDownValue,
    this.fullbodypaintingModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNoInputController;

  SelectionPopupModel? selectedDropDownValue;

  FullbodypaintingModel? fullbodypaintingModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNoInputController,
        selectedDropDownValue,
        fullbodypaintingModelObj,
      ];
  FullbodypaintingState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNoInputController,
    SelectionPopupModel? selectedDropDownValue,
    FullbodypaintingModel? fullbodypaintingModelObj,
  }) {
    return FullbodypaintingState(
      nameController: nameController ?? this.nameController,
      registerNoInputController:
          registerNoInputController ?? this.registerNoInputController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      fullbodypaintingModelObj:
          fullbodypaintingModelObj ?? this.fullbodypaintingModelObj,
    );
  }
}
