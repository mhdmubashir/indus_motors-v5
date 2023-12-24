import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/scratchremovel_screen/models/scratchremovel_model.dart';part 'scratchremovel_event.dart';part 'scratchremovel_state.dart';/// A bloc that manages the state of a Scratchremovel according to the event that is dispatched to it.
class ScratchremovelBloc extends Bloc<ScratchremovelEvent, ScratchremovelState> {ScratchremovelBloc(ScratchremovelState initialState) : super(initialState) { on<ScratchremovelInitialEvent>(_onInitialize); }

_onInitialize(ScratchremovelInitialEvent event, Emitter<ScratchremovelState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNumberPromptController: TextEditingController(), typeSomethingPromptController: TextEditingController())); } 
 }
