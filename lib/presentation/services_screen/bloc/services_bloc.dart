import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/serviceschipview_item_model.dart';import 'package:indus_motors/presentation/services_screen/models/services_model.dart';part 'services_event.dart';part 'services_state.dart';/// A bloc that manages the state of a Services according to the event that is dispatched to it.
class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {ServicesBloc(ServicesState initialState) : super(initialState) { on<ServicesInitialEvent>(_onInitialize); on<UpdateChipViewEvent>(_updateChipView); }

_onInitialize(ServicesInitialEvent event, Emitter<ServicesState> emit, ) async  { emit(state.copyWith(servicesModelObj: state.servicesModelObj?.copyWith(serviceschipviewItemList: fillServiceschipviewItemList()))); } 
_updateChipView(UpdateChipViewEvent event, Emitter<ServicesState> emit, ) { List<ServiceschipviewItemModel> newList = List<ServiceschipviewItemModel>.from(state.servicesModelObj!.serviceschipviewItemList); newList[event.index] = newList[event.index].copyWith(isSelected: event.isSelected); emit(state.copyWith(servicesModelObj: state.servicesModelObj?.copyWith(serviceschipviewItemList: newList))); } 
List<ServiceschipviewItemModel> fillServiceschipviewItemList() { return List.generate(10, (index) => ServiceschipviewItemModel()); } 
 }
