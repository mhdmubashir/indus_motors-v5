import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/celerio_page/models/celerio_model.dart';part 'celerio_event.dart';part 'celerio_state.dart';/// A bloc that manages the state of a Celerio according to the event that is dispatched to it.
class CelerioBloc extends Bloc<CelerioEvent, CelerioState> {CelerioBloc(CelerioState initialState) : super(initialState) { on<CelerioInitialEvent>(_onInitialize); }

_onInitialize(CelerioInitialEvent event, Emitter<CelerioState> emit, ) async  {  } 
 }
