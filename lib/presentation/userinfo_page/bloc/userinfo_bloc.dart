import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/userinfo_page/models/userinfo_model.dart';part 'userinfo_event.dart';part 'userinfo_state.dart';/// A bloc that manages the state of a Userinfo according to the event that is dispatched to it.
class UserinfoBloc extends Bloc<UserinfoEvent, UserinfoState> {UserinfoBloc(UserinfoState initialState) : super(initialState) { on<UserinfoInitialEvent>(_onInitialize); }

_onInitialize(UserinfoInitialEvent event, Emitter<UserinfoState> emit, ) async  {  } 
 }
