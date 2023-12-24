import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/carenquiry_page/models/carenquiry_model.dart';part 'carenquiry_event.dart';part 'carenquiry_state.dart';/// A bloc that manages the state of a Carenquiry according to the event that is dispatched to it.
class CarenquiryBloc extends Bloc<CarenquiryEvent, CarenquiryState> {CarenquiryBloc(CarenquiryState initialState) : super(initialState) { on<CarenquiryInitialEvent>(_onInitialize); }

_onInitialize(CarenquiryInitialEvent event, Emitter<CarenquiryState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), mobileNumberController: TextEditingController(), emailController: TextEditingController(), outletTypeController: TextEditingController(), outletTypeController1: TextEditingController())); } 
 }
