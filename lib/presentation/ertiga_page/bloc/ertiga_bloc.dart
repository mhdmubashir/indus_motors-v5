import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/ertiga_page/models/ertiga_model.dart';part 'ertiga_event.dart';part 'ertiga_state.dart';/// A bloc that manages the state of a Ertiga according to the event that is dispatched to it.
class ErtigaBloc extends Bloc<ErtigaEvent, ErtigaState> {ErtigaBloc(ErtigaState initialState) : super(initialState) { on<ErtigaInitialEvent>(_onInitialize); }

_onInitialize(ErtigaInitialEvent event, Emitter<ErtigaState> emit, ) async  {  } 
 }
