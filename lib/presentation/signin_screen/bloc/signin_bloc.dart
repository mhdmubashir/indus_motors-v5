import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/signin_screen/models/signin_model.dart';part 'signin_event.dart';part 'signin_state.dart';/// A bloc that manages the state of a Signin according to the event that is dispatched to it.
class SigninBloc extends Bloc<SigninEvent, SigninState> {SigninBloc(SigninState initialState) : super(initialState) { on<SigninInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SigninState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(SigninInitialEvent event, Emitter<SigninState> emit, ) async  { emit(state.copyWith(customeridController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true)); } 
 }
