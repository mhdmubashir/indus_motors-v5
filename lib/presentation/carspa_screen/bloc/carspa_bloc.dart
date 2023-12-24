import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/carspa_screen/models/carspa_model.dart';part 'carspa_event.dart';part 'carspa_state.dart';/// A bloc that manages the state of a Carspa according to the event that is dispatched to it.
class CarspaBloc extends Bloc<CarspaEvent, CarspaState> {CarspaBloc(CarspaState initialState) : super(initialState) { on<CarspaInitialEvent>(_onInitialize); }

_onInitialize(CarspaInitialEvent event, Emitter<CarspaState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNoPlaceholderController: TextEditingController())); } 
 }
