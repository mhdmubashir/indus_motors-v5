// ignore_for_file: must_be_immutable

part of 'forgotpasword_bloc.dart';

/// Represents the state of Forgotpasword in the application.
class ForgotpaswordState extends Equatable {
  ForgotpaswordState({
    this.newpasswordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.forgotpaswordModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  ForgotpaswordModel? forgotpaswordModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        newpasswordController,
        confirmpasswordController,
        isShowPassword,
        forgotpaswordModelObj,
      ];
  ForgotpaswordState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    ForgotpaswordModel? forgotpaswordModelObj,
  }) {
    return ForgotpaswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      forgotpaswordModelObj:
          forgotpaswordModelObj ?? this.forgotpaswordModelObj,
    );
  }
}
