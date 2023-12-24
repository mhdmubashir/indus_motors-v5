import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/feedbacksuggestion_screen/models/feedbacksuggestion_model.dart';part 'feedbacksuggestion_event.dart';part 'feedbacksuggestion_state.dart';/// A bloc that manages the state of a Feedbacksuggestion according to the event that is dispatched to it.
class FeedbacksuggestionBloc extends Bloc<FeedbacksuggestionEvent, FeedbacksuggestionState> {FeedbacksuggestionBloc(FeedbacksuggestionState initialState) : super(initialState) { on<FeedbacksuggestionInitialEvent>(_onInitialize); }

_onInitialize(FeedbacksuggestionInitialEvent event, Emitter<FeedbacksuggestionState> emit, ) async  { emit(state.copyWith(writeFeedbackValueController: TextEditingController())); } 
 }
