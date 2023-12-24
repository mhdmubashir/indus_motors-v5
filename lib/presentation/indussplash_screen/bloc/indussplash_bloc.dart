import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/indussplash_screen/models/indussplash_model.dart';part 'indussplash_event.dart';part 'indussplash_state.dart';/// A bloc that manages the state of a Indussplash according to the event that is dispatched to it.
class IndussplashBloc extends Bloc<IndussplashEvent, IndussplashState> {IndussplashBloc(IndussplashState initialState) : super(initialState) { on<IndussplashInitialEvent>(_onInitialize); }

_onInitialize(IndussplashInitialEvent event, Emitter<IndussplashState> emit, ) async  {  } 
 }
