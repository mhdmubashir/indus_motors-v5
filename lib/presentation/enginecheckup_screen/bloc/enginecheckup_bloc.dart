import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/enginecheckup_screen/models/enginecheckup_model.dart';part 'enginecheckup_event.dart';part 'enginecheckup_state.dart';/// A bloc that manages the state of a Enginecheckup according to the event that is dispatched to it.
class EnginecheckupBloc extends Bloc<EnginecheckupEvent, EnginecheckupState> {EnginecheckupBloc(EnginecheckupState initialState) : super(initialState) { on<EnginecheckupInitialEvent>(_onInitialize); }

_onInitialize(EnginecheckupInitialEvent event, Emitter<EnginecheckupState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNumberInputController: TextEditingController())); } 
 }
