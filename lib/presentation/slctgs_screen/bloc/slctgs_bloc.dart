import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/slctgs_screen/models/slctgs_model.dart';part 'slctgs_event.dart';part 'slctgs_state.dart';/// A bloc that manages the state of a Slctgs according to the event that is dispatched to it.
class SlctgsBloc extends Bloc<SlctgsEvent, SlctgsState> {SlctgsBloc(SlctgsState initialState) : super(initialState) { on<SlctgsInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<SlctgsState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(SlctgsInitialEvent event, Emitter<SlctgsState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNoPromptController: TextEditingController())); emit(state.copyWith(slctgsModelObj: state.slctgsModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
