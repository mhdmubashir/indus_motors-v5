import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/gsoilchange_screen/models/gsoilchange_model.dart';part 'gsoilchange_event.dart';part 'gsoilchange_state.dart';/// A bloc that manages the state of a Gsoilchange according to the event that is dispatched to it.
class GsoilchangeBloc extends Bloc<GsoilchangeEvent, GsoilchangeState> {GsoilchangeBloc(GsoilchangeState initialState) : super(initialState) { on<GsoilchangeInitialEvent>(_onInitialize); }

_onInitialize(GsoilchangeInitialEvent event, Emitter<GsoilchangeState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNoPlaceholderController: TextEditingController(), serviceTypeValueController: TextEditingController())); } 
 }
