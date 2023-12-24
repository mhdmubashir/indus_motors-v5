// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'serviceschipview_item_model.dart';/// This class defines the variables used in the [services_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ServicesModel extends Equatable {ServicesModel({this.serviceschipviewItemList = const []}) {  }

List<ServiceschipviewItemModel> serviceschipviewItemList;

ServicesModel copyWith({List<ServiceschipviewItemModel>? serviceschipviewItemList}) { return ServicesModel(
serviceschipviewItemList : serviceschipviewItemList ?? this.serviceschipviewItemList,
); } 
@override List<Object?> get props => [serviceschipviewItemList];
 }
