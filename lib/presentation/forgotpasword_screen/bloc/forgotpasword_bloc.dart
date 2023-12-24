import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/forgotpasword_screen/models/forgotpasword_model.dart';part 'forgotpasword_event.dart';part 'forgotpasword_state.dart';/// A bloc that manages the state of a Forgotpasword according to the event that is dispatched to it.
class ForgotpaswordBloc extends Bloc<ForgotpaswordEvent, ForgotpaswordState> {ForgotpaswordBloc(ForgotpaswordState initialState) : super(initialState) { on<ForgotpaswordInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<ForgotpaswordState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(ForgotpaswordInitialEvent event, Emitter<ForgotpaswordState> emit, ) async  { emit(state.copyWith(newpasswordController: TextEditingController(), confirmpasswordController: TextEditingController(), isShowPassword: true)); } 
 }
