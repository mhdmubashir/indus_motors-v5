import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/invicto_page/models/invicto_model.dart';part 'invicto_event.dart';part 'invicto_state.dart';/// A bloc that manages the state of a Invicto according to the event that is dispatched to it.
class InvictoBloc extends Bloc<InvictoEvent, InvictoState> {InvictoBloc(InvictoState initialState) : super(initialState) { on<InvictoInitialEvent>(_onInitialize); }

_onInitialize(InvictoInitialEvent event, Emitter<InvictoState> emit, ) async  {  } 
 }
