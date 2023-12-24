// ignore_for_file: must_be_immutable

part of 'servicebooking_bloc.dart';

/// Represents the state of Servicebooking in the application.
class ServicebookingState extends Equatable {
  ServicebookingState({
    this.serviceBookingTextController,
    this.mobileNumberTextController,
    this.registerNumberTextController,
    this.chooseYourDistrictTextController,
    this.servicebookingModelObj,
  });

  TextEditingController? serviceBookingTextController;

  TextEditingController? mobileNumberTextController;

  TextEditingController? registerNumberTextController;

  TextEditingController? chooseYourDistrictTextController;

  ServicebookingModel? servicebookingModelObj;

  @override
  List<Object?> get props => [
        serviceBookingTextController,
        mobileNumberTextController,
        registerNumberTextController,
        chooseYourDistrictTextController,
        servicebookingModelObj,
      ];
  ServicebookingState copyWith({
    TextEditingController? serviceBookingTextController,
    TextEditingController? mobileNumberTextController,
    TextEditingController? registerNumberTextController,
    TextEditingController? chooseYourDistrictTextController,
    ServicebookingModel? servicebookingModelObj,
  }) {
    return ServicebookingState(
      serviceBookingTextController:
          serviceBookingTextController ?? this.serviceBookingTextController,
      mobileNumberTextController:
          mobileNumberTextController ?? this.mobileNumberTextController,
      registerNumberTextController:
          registerNumberTextController ?? this.registerNumberTextController,
      chooseYourDistrictTextController: chooseYourDistrictTextController ??
          this.chooseYourDistrictTextController,
      servicebookingModelObj:
          servicebookingModelObj ?? this.servicebookingModelObj,
    );
  }
}
