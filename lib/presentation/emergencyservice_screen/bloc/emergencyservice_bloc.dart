import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/emergencyservice_screen/models/emergencyservice_model.dart';part 'emergencyservice_event.dart';part 'emergencyservice_state.dart';/// A bloc that manages the state of a Emergencyservice according to the event that is dispatched to it.
class EmergencyserviceBloc extends Bloc<EmergencyserviceEvent, EmergencyserviceState> {EmergencyserviceBloc(EmergencyserviceState initialState) : super(initialState) { on<EmergencyserviceInitialEvent>(_onInitialize); }

_onInitialize(EmergencyserviceInitialEvent event, Emitter<EmergencyserviceState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNumberPromptController: TextEditingController())); } 
 }
