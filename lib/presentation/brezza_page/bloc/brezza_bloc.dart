import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/brezza_page/models/brezza_model.dart';part 'brezza_event.dart';part 'brezza_state.dart';/// A bloc that manages the state of a Brezza according to the event that is dispatched to it.
class BrezzaBloc extends Bloc<BrezzaEvent, BrezzaState> {BrezzaBloc(BrezzaState initialState) : super(initialState) { on<BrezzaInitialEvent>(_onInitialize); }

_onInitialize(BrezzaInitialEvent event, Emitter<BrezzaState> emit, ) async  {  } 
 }
