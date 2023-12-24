import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:indus_motors/presentation/selectgnrlsrv_screen/models/selectgnrlsrv_model.dart';part 'selectgnrlsrv_event.dart';part 'selectgnrlsrv_state.dart';/// A bloc that manages the state of a Selectgnrlsrv according to the event that is dispatched to it.
class SelectgnrlsrvBloc extends Bloc<SelectgnrlsrvEvent, SelectgnrlsrvState> {SelectgnrlsrvBloc(SelectgnrlsrvState initialState) : super(initialState) { on<SelectgnrlsrvInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<SelectgnrlsrvState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(SelectgnrlsrvInitialEvent event, Emitter<SelectgnrlsrvState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), registerNumberController: TextEditingController())); emit(state.copyWith(selectgnrlsrvModelObj: state.selectgnrlsrvModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
