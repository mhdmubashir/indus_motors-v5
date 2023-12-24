// ignore_for_file: must_be_immutable

part of 'otpscreen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Otpscreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpscreenEvent extends Equatable {}

/// Event that is dispatched when the Otpscreen widget is first created.
class OtpscreenInitialEvent extends OtpscreenEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpscreenEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
