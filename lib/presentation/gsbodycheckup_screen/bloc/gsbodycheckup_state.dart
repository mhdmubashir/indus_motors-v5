// ignore_for_file: must_be_immutable

part of 'gsbodycheckup_bloc.dart';

/// Represents the state of Gsbodycheckup in the application.
class GsbodycheckupState extends Equatable {
  GsbodycheckupState({
    this.nameController,
    this.registerNoLabelController,
    this.bodyCheckupLabelController,
    this.gsbodycheckupModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? registerNoLabelController;

  TextEditingController? bodyCheckupLabelController;

  GsbodycheckupModel? gsbodycheckupModelObj;

  @override
  List<Object?> get props => [
        nameController,
        registerNoLabelController,
        bodyCheckupLabelController,
        gsbodycheckupModelObj,
      ];
  GsbodycheckupState copyWith({
    TextEditingController? nameController,
    TextEditingController? registerNoLabelController,
    TextEditingController? bodyCheckupLabelController,
    GsbodycheckupModel? gsbodycheckupModelObj,
  }) {
    return GsbodycheckupState(
      nameController: nameController ?? this.nameController,
      registerNoLabelController:
          registerNoLabelController ?? this.registerNoLabelController,
      bodyCheckupLabelController:
          bodyCheckupLabelController ?? this.bodyCheckupLabelController,
      gsbodycheckupModelObj:
          gsbodycheckupModelObj ?? this.gsbodycheckupModelObj,
    );
  }
}
