// ignore_for_file: must_be_immutable

part of 'selectgnrlsrv_bloc.dart';

/// Represents the state of Selectgnrlsrv in the application.
class SelectgnrlsrvState extends Equatable {
  SelectgnrlsrvState({
    this.nameController,
    this.registerNumberController,
    this.selectedDropDownValue,
    this.selectgnrlsrvModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNumberController;

  SelectionPopupModel? selectedDropDownValue;

  SelectgnrlsrvModel? selectgnrlsrvModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNumberController,
        selectedDropDownValue,
        selectgnrlsrvModelObj,
      ];
  SelectgnrlsrvState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNumberController,
    SelectionPopupModel? selectedDropDownValue,
    SelectgnrlsrvModel? selectgnrlsrvModelObj,
  }) {
    return SelectgnrlsrvState(
      nameController: nameController ?? this.nameController,
      registerNumberController:
          registerNumberController ?? this.registerNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectgnrlsrvModelObj:
          selectgnrlsrvModelObj ?? this.selectgnrlsrvModelObj,
    );
  }
}
