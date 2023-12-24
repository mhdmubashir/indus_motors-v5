import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/servicesnotadded_screen/models/servicesnotadded_model.dart';part 'servicesnotadded_event.dart';part 'servicesnotadded_state.dart';/// A bloc that manages the state of a Servicesnotadded according to the event that is dispatched to it.
class ServicesnotaddedBloc extends Bloc<ServicesnotaddedEvent, ServicesnotaddedState> {ServicesnotaddedBloc(ServicesnotaddedState initialState) : super(initialState) { on<ServicesnotaddedInitialEvent>(_onInitialize); }

_onInitialize(ServicesnotaddedInitialEvent event, Emitter<ServicesnotaddedState> emit, ) async  {  } 
 }
