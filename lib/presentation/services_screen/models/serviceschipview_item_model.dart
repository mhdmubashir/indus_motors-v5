// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [serviceschipview_item_widget] screen.
class ServiceschipviewItemModel extends Equatable {ServiceschipviewItemModel({this.widget, this.isSelected, }) { widget = widget  ?? "General\nservice";isSelected = isSelected  ?? false; }

String? widget;

bool? isSelected;

ServiceschipviewItemModel copyWith({String? widget, bool? isSelected, }) { return ServiceschipviewItemModel(
widget : widget ?? this.widget,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [widget,isSelected];
 }
