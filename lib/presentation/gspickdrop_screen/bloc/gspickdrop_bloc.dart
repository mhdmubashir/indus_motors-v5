import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/gspickdrop_screen/models/gspickdrop_model.dart';part 'gspickdrop_event.dart';part 'gspickdrop_state.dart';/// A bloc that manages the state of a Gspickdrop according to the event that is dispatched to it.
class GspickdropBloc extends Bloc<GspickdropEvent, GspickdropState> {GspickdropBloc(GspickdropState initialState) : super(initialState) { on<GspickdropInitialEvent>(_onInitialize); }

_onInitialize(GspickdropInitialEvent event, Emitter<GspickdropState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNumberPromptController: TextEditingController(), pickAndDropOptionController: TextEditingController())); } 
 }
