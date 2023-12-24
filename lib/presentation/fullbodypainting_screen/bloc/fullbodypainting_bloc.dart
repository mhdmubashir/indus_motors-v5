import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/fullbodypainting_screen/models/fullbodypainting_model.dart';part 'fullbodypainting_event.dart';part 'fullbodypainting_state.dart';/// A bloc that manages the state of a Fullbodypainting according to the event that is dispatched to it.
class FullbodypaintingBloc extends Bloc<FullbodypaintingEvent, FullbodypaintingState> {FullbodypaintingBloc(FullbodypaintingState initialState) : super(initialState) { on<FullbodypaintingInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<FullbodypaintingState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(FullbodypaintingInitialEvent event, Emitter<FullbodypaintingState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNoInputController: TextEditingController())); emit(state.copyWith(fullbodypaintingModelObj: state.fullbodypaintingModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
