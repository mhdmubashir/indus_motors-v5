import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/gsperoidiccheckup_screen/models/gsperoidiccheckup_model.dart';part 'gsperoidiccheckup_event.dart';part 'gsperoidiccheckup_state.dart';/// A bloc that manages the state of a Gsperoidiccheckup according to the event that is dispatched to it.
class GsperoidiccheckupBloc extends Bloc<GsperoidiccheckupEvent, GsperoidiccheckupState> {GsperoidiccheckupBloc(GsperoidiccheckupState initialState) : super(initialState) { on<GsperoidiccheckupInitialEvent>(_onInitialize); }

_onInitialize(GsperoidiccheckupInitialEvent event, Emitter<GsperoidiccheckupState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNumberInputController: TextEditingController(), serviceTypeValueController: TextEditingController())); } 
 }
