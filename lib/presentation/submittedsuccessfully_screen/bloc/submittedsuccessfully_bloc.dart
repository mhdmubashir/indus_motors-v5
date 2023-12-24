import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/submittedsuccessfully_screen/models/submittedsuccessfully_model.dart';part 'submittedsuccessfully_event.dart';part 'submittedsuccessfully_state.dart';/// A bloc that manages the state of a Submittedsuccessfully according to the event that is dispatched to it.
class SubmittedsuccessfullyBloc extends Bloc<SubmittedsuccessfullyEvent, SubmittedsuccessfullyState> {SubmittedsuccessfullyBloc(SubmittedsuccessfullyState initialState) : super(initialState) { on<SubmittedsuccessfullyInitialEvent>(_onInitialize); }

_onInitialize(SubmittedsuccessfullyInitialEvent event, Emitter<SubmittedsuccessfullyState> emit, ) async  {  } 
 }
