import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:indus_motors/presentation/servicebooking_tab_container_screen/models/servicebooking_tab_container_model.dart';
part 'servicebooking_tab_container_event.dart';
part 'servicebooking_tab_container_state.dart';

/// A bloc that manages the state of a ServicebookingTabContainer according to the event that is dispatched to it.
class ServicebookingTabContainerBloc extends Bloc<
    ServicebookingTabContainerEvent, ServicebookingTabContainerState> {
  ServicebookingTabContainerBloc(ServicebookingTabContainerState initialState)
      : super(initialState) {
    on<ServicebookingTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ServicebookingTabContainerInitialEvent event,
    Emitter<ServicebookingTabContainerState> emit,
  ) async {}
}
