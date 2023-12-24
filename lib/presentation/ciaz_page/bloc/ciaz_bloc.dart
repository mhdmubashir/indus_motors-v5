import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/ciaz_page/models/ciaz_model.dart';part 'ciaz_event.dart';part 'ciaz_state.dart';/// A bloc that manages the state of a Ciaz according to the event that is dispatched to it.
class CiazBloc extends Bloc<CiazEvent, CiazState> {CiazBloc(CiazState initialState) : super(initialState) { on<CiazInitialEvent>(_onInitialize); }

_onInitialize(CiazInitialEvent event, Emitter<CiazState> emit, ) async  {  } 
 }
