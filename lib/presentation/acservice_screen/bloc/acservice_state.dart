// ignore_for_file: must_be_immutable

part of 'acservice_bloc.dart';

/// Represents the state of Acservice in the application.
class AcserviceState extends Equatable {
  AcserviceState({
    this.nameController,
    this.registerNumberPromptController,
    this.acserviceModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNumberPromptController;

  AcserviceModel? acserviceModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNumberPromptController,
        acserviceModelObj,
      ];
  AcserviceState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNumberPromptController,
    AcserviceModel? acserviceModelObj,
  }) {
    return AcserviceState(
      nameController: nameController ?? this.nameController,
      registerNumberPromptController:
          registerNumberPromptController ?? this.registerNumberPromptController,
      acserviceModelObj: acserviceModelObj ?? this.acserviceModelObj,
    );
  }
}
