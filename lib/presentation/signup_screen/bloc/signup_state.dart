// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

/// Represents the state of Signup in the application.
class SignupState extends Equatable {
  SignupState({
    this.emailController,
    this.nameController,
    this.customerIdController,
    this.passwordController,
    this.confirmpasswordController,
    this.signupModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? nameController;

  TextEditingController? customerIdController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  SignupModel? signupModelObj;

  @override
  List<Object?> get props => [
        emailController,
        nameController,
        customerIdController,
        passwordController,
        confirmpasswordController,
        signupModelObj,
      ];
  SignupState copyWith({
    TextEditingController? emailController,
    TextEditingController? nameController,
    TextEditingController? customerIdController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      emailController: emailController ?? this.emailController,
      nameController: nameController ?? this.nameController,
      customerIdController: customerIdController ?? this.customerIdController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      signupModelObj: signupModelObj ?? this.signupModelObj,
    );
  }
}
