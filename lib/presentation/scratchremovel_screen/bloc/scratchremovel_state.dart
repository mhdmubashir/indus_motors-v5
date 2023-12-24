// ignore_for_file: must_be_immutable

part of 'scratchremovel_bloc.dart';

/// Represents the state of Scratchremovel in the application.
class ScratchremovelState extends Equatable {
  ScratchremovelState({
    this.nameController,
    this.registerNumberPromptController,
    this.typeSomethingPromptController,
    this.scratchremovelModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNumberPromptController;

  TextEditingController? typeSomethingPromptController;

  ScratchremovelModel? scratchremovelModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNumberPromptController,
        typeSomethingPromptController,
        scratchremovelModelObj,
      ];
  ScratchremovelState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNumberPromptController,
    TextEditingController? typeSomethingPromptController,
    ScratchremovelModel? scratchremovelModelObj,
  }) {
    return ScratchremovelState(
      nameController: nameController ?? this.nameController,
      registerNumberPromptController:
          registerNumberPromptController ?? this.registerNumberPromptController,
      typeSomethingPromptController:
          typeSomethingPromptController ?? this.typeSomethingPromptController,
      scratchremovelModelObj:
          scratchremovelModelObj ?? this.scratchremovelModelObj,
    );
  }
}
