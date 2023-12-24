import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/waterwashing_screen/models/waterwashing_model.dart';part 'waterwashing_event.dart';part 'waterwashing_state.dart';/// A bloc that manages the state of a Waterwashing according to the event that is dispatched to it.
class WaterwashingBloc extends Bloc<WaterwashingEvent, WaterwashingState> {WaterwashingBloc(WaterwashingState initialState) : super(initialState) { on<WaterwashingInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<WaterwashingState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(WaterwashingInitialEvent event, Emitter<WaterwashingState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNoPromptController: TextEditingController())); emit(state.copyWith(waterwashingModelObj: state.waterwashingModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
