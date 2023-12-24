import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/jimny_page/models/jimny_model.dart';part 'jimny_event.dart';part 'jimny_state.dart';/// A bloc that manages the state of a Jimny according to the event that is dispatched to it.
class JimnyBloc extends Bloc<JimnyEvent, JimnyState> {JimnyBloc(JimnyState initialState) : super(initialState) { on<JimnyInitialEvent>(_onInitialize); }

_onInitialize(JimnyInitialEvent event, Emitter<JimnyState> emit, ) async  {  } 
 }
