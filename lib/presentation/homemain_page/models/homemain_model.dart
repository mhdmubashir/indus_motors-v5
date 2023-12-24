// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'buttongrid_item_model.dart';/// This class defines the variables used in the [homemain_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomemainModel extends Equatable {HomemainModel({this.buttongridItemList = const []}) {  }

List<ButtongridItemModel> buttongridItemList;

HomemainModel copyWith({List<ButtongridItemModel>? buttongridItemList}) { return HomemainModel(
buttongridItemList : buttongridItemList ?? this.buttongridItemList,
); } 
@override List<Object?> get props => [buttongridItemList];
 }
