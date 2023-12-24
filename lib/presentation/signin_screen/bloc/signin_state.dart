// ignore_for_file: must_be_immutable

part of 'signin_bloc.dart';

/// Represents the state of Signin in the application.
class SigninState extends Equatable {
  SigninState({
    this.customeridController,
    this.passwordController,
    this.isShowPassword = true,
    this.signinModelObj,
  });

  TextEditingController? customeridController;

  TextEditingController? passwordController;

  SigninModel? signinModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        customeridController,
        passwordController,
        isShowPassword,
        signinModelObj,
      ];
  SigninState copyWith({
    TextEditingController? customeridController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SigninModel? signinModelObj,
  }) {
    return SigninState(
      customeridController: customeridController ?? this.customeridController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signinModelObj: signinModelObj ?? this.signinModelObj,
    );
  }
}
