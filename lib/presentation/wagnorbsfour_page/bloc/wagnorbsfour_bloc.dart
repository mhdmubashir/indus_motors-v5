import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/wagnorbsfour_page/models/wagnorbsfour_model.dart';part 'wagnorbsfour_event.dart';part 'wagnorbsfour_state.dart';/// A bloc that manages the state of a Wagnorbsfour according to the event that is dispatched to it.
class WagnorbsfourBloc extends Bloc<WagnorbsfourEvent, WagnorbsfourState> {WagnorbsfourBloc(WagnorbsfourState initialState) : super(initialState) { on<WagnorbsfourInitialEvent>(_onInitialize); }

_onInitialize(WagnorbsfourInitialEvent event, Emitter<WagnorbsfourState> emit, ) async  {  } 
 }
