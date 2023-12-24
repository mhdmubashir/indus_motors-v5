import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/servicebooking_page/models/servicebooking_model.dart';part 'servicebooking_event.dart';part 'servicebooking_state.dart';/// A bloc that manages the state of a Servicebooking according to the event that is dispatched to it.
class ServicebookingBloc extends Bloc<ServicebookingEvent, ServicebookingState> {ServicebookingBloc(ServicebookingState initialState) : super(initialState) { on<ServicebookingInitialEvent>(_onInitialize); }

_onInitialize(ServicebookingInitialEvent event, Emitter<ServicebookingState> emit, ) async  { emit(state.copyWith(serviceBookingTextController: TextEditingController(), mobileNumberTextController: TextEditingController(), registerNumberTextController: TextEditingController(), chooseYourDistrictTextController: TextEditingController())); } 
 }
