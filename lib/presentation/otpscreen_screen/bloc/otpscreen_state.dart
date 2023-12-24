// ignore_for_file: must_be_immutable

part of 'otpscreen_bloc.dart';

/// Represents the state of Otpscreen in the application.
class OtpscreenState extends Equatable {
  OtpscreenState({
    this.otpController,
    this.otpscreenModelObj,
  });

  TextEditingController? otpController;

  OtpscreenModel? otpscreenModelObj;

  @override
  List<Object?> get props => [
        otpController,
        otpscreenModelObj,
      ];
  OtpscreenState copyWith({
    TextEditingController? otpController,
    OtpscreenModel? otpscreenModelObj,
  }) {
    return OtpscreenState(
      otpController: otpController ?? this.otpController,
      otpscreenModelObj: otpscreenModelObj ?? this.otpscreenModelObj,
    );
  }
}
