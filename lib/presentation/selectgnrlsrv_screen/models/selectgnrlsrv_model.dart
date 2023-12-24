// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:indus_motors/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [selectgnrlsrv_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectgnrlsrvModel extends Equatable {SelectgnrlsrvModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

SelectgnrlsrvModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return SelectgnrlsrvModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
