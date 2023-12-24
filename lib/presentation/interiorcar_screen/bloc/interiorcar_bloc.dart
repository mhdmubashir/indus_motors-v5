import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/interiorcar_screen/models/interiorcar_model.dart';part 'interiorcar_event.dart';part 'interiorcar_state.dart';/// A bloc that manages the state of a Interiorcar according to the event that is dispatched to it.
class InteriorcarBloc extends Bloc<InteriorcarEvent, InteriorcarState> {InteriorcarBloc(InteriorcarState initialState) : super(initialState) { on<InteriorcarInitialEvent>(_onInitialize); }

_onInitialize(InteriorcarInitialEvent event, Emitter<InteriorcarState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNumberInputController: TextEditingController(), serviceTypeInputController: TextEditingController())); } 
 }
