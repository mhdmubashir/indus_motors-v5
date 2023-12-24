// ignore_for_file: must_be_immutable

part of 'gspickdrop_bloc.dart';

/// Represents the state of Gspickdrop in the application.
class GspickdropState extends Equatable {
  GspickdropState({
    this.nameController,
    this.registerNumberPromptController,
    this.pickAndDropOptionController,
    this.gspickdropModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNumberPromptController;

  TextEditingController? pickAndDropOptionController;

  GspickdropModel? gspickdropModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNumberPromptController,
        pickAndDropOptionController,
        gspickdropModelObj,
      ];
  GspickdropState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNumberPromptController,
    TextEditingController? pickAndDropOptionController,
    GspickdropModel? gspickdropModelObj,
  }) {
    return GspickdropState(
      nameController: nameController ?? this.nameController,
      registerNumberPromptController:
          registerNumberPromptController ?? this.registerNumberPromptController,
      pickAndDropOptionController:
          pickAndDropOptionController ?? this.pickAndDropOptionController,
      gspickdropModelObj: gspickdropModelObj ?? this.gspickdropModelObj,
    );
  }
}
