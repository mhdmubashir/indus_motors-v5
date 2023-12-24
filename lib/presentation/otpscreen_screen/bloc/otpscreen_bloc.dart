import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:indus_motors/presentation/otpscreen_screen/models/otpscreen_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'otpscreen_event.dart';
part 'otpscreen_state.dart';

/// A bloc that manages the state of a Otpscreen according to the event that is dispatched to it.
class OtpscreenBloc extends Bloc<OtpscreenEvent, OtpscreenState>
    with CodeAutoFill {
  OtpscreenBloc(OtpscreenState initialState) : super(initialState) {
    on<OtpscreenInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OtpscreenState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    OtpscreenInitialEvent event,
    Emitter<OtpscreenState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
