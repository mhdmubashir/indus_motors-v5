import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/swift_page/models/swift_model.dart';part 'swift_event.dart';part 'swift_state.dart';/// A bloc that manages the state of a Swift according to the event that is dispatched to it.
class SwiftBloc extends Bloc<SwiftEvent, SwiftState> {SwiftBloc(SwiftState initialState) : super(initialState) { on<SwiftInitialEvent>(_onInitialize); }

_onInitialize(SwiftInitialEvent event, Emitter<SwiftState> emit, ) async  {  } 
 }
