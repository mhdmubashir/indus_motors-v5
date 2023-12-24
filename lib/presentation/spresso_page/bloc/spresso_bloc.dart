import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/spresso_page/models/spresso_model.dart';part 'spresso_event.dart';part 'spresso_state.dart';/// A bloc that manages the state of a Spresso according to the event that is dispatched to it.
class SpressoBloc extends Bloc<SpressoEvent, SpressoState> {SpressoBloc(SpressoState initialState) : super(initialState) { on<SpressoInitialEvent>(_onInitialize); }

_onInitialize(SpressoInitialEvent event, Emitter<SpressoState> emit, ) async  {  } 
 }
