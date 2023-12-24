import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/acservice_screen/models/acservice_model.dart';part 'acservice_event.dart';part 'acservice_state.dart';/// A bloc that manages the state of a Acservice according to the event that is dispatched to it.
class AcserviceBloc extends Bloc<AcserviceEvent, AcserviceState> {AcserviceBloc(AcserviceState initialState) : super(initialState) { on<AcserviceInitialEvent>(_onInitialize); }

_onInitialize(AcserviceInitialEvent event, Emitter<AcserviceState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNumberPromptController: TextEditingController())); } 
 }
