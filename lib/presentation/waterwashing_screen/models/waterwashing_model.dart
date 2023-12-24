// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:indus_motors/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [waterwashing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WaterwashingModel extends Equatable {WaterwashingModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

WaterwashingModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return WaterwashingModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
