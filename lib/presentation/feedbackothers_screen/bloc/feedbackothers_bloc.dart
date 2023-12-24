import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/feedbackothers_screen/models/feedbackothers_model.dart';part 'feedbackothers_event.dart';part 'feedbackothers_state.dart';/// A bloc that manages the state of a Feedbackothers according to the event that is dispatched to it.
class FeedbackothersBloc extends Bloc<FeedbackothersEvent, FeedbackothersState> {FeedbackothersBloc(FeedbackothersState initialState) : super(initialState) { on<FeedbackothersInitialEvent>(_onInitialize); }

_onInitialize(FeedbackothersInitialEvent event, Emitter<FeedbackothersState> emit, ) async  { emit(state.copyWith(writeFeedbackValueController: TextEditingController())); } 
 }
