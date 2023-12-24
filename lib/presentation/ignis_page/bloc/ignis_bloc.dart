import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/ignis_page/models/ignis_model.dart';part 'ignis_event.dart';part 'ignis_state.dart';/// A bloc that manages the state of a Ignis according to the event that is dispatched to it.
class IgnisBloc extends Bloc<IgnisEvent, IgnisState> {IgnisBloc(IgnisState initialState) : super(initialState) { on<IgnisInitialEvent>(_onInitialize); }

_onInitialize(IgnisInitialEvent event, Emitter<IgnisState> emit, ) async  {  } 
 }
