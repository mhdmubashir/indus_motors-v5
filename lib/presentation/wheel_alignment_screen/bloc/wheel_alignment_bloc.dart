import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/wheel_alignment_screen/models/wheel_alignment_model.dart';part 'wheel_alignment_event.dart';part 'wheel_alignment_state.dart';/// A bloc that manages the state of a WheelAlignment according to the event that is dispatched to it.
class WheelAlignmentBloc extends Bloc<WheelAlignmentEvent, WheelAlignmentState> {WheelAlignmentBloc(WheelAlignmentState initialState) : super(initialState) { on<WheelAlignmentInitialEvent>(_onInitialize); }

_onInitialize(WheelAlignmentInitialEvent event, Emitter<WheelAlignmentState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNumberInputController: TextEditingController())); } 
 }
