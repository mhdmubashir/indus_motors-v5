import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/gsbodycheckup_screen/models/gsbodycheckup_model.dart';part 'gsbodycheckup_event.dart';part 'gsbodycheckup_state.dart';/// A bloc that manages the state of a Gsbodycheckup according to the event that is dispatched to it.
class GsbodycheckupBloc extends Bloc<GsbodycheckupEvent, GsbodycheckupState> {GsbodycheckupBloc(GsbodycheckupState initialState) : super(initialState) { on<GsbodycheckupInitialEvent>(_onInitialize); }

_onInitialize(GsbodycheckupInitialEvent event, Emitter<GsbodycheckupState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNoLabelController: TextEditingController(), bodyCheckupLabelController: TextEditingController())); } 
 }
