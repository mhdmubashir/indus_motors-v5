// ignore_for_file: must_be_immutable

part of 'carenquiry_bloc.dart';

/// Represents the state of Carenquiry in the application.
class CarenquiryState extends Equatable {
  CarenquiryState({
    this.nameController,
    this.mobileNumberController,
    this.emailController,
    this.outletTypeController,
    this.outletTypeController1,
    this.carenquiryModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? mobileNumberController;

  TextEditingController? emailController;

  TextEditingController? outletTypeController;

  TextEditingController? outletTypeController1;

  CarenquiryModel? carenquiryModelObj;

  @override
  List<Object?> get props => [
        nameController,
        mobileNumberController,
        emailController,
        outletTypeController,
        outletTypeController1,
        carenquiryModelObj,
      ];
  CarenquiryState copyWith({
    TextEditingController? nameController,
    TextEditingController? mobileNumberController,
    TextEditingController? emailController,
    TextEditingController? outletTypeController,
    TextEditingController? outletTypeController1,
    CarenquiryModel? carenquiryModelObj,
  }) {
    return CarenquiryState(
      nameController: nameController ?? this.nameController,
      mobileNumberController:
          mobileNumberController ?? this.mobileNumberController,
      emailController: emailController ?? this.emailController,
      outletTypeController: outletTypeController ?? this.outletTypeController,
      outletTypeController1:
          outletTypeController1 ?? this.outletTypeController1,
      carenquiryModelObj: carenquiryModelObj ?? this.carenquiryModelObj,
    );
  }
}
