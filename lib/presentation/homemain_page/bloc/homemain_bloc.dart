import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/buttongrid_item_model.dart';import 'package:indus_motors/presentation/homemain_page/models/homemain_model.dart';part 'homemain_event.dart';part 'homemain_state.dart';/// A bloc that manages the state of a Homemain according to the event that is dispatched to it.
class HomemainBloc extends Bloc<HomemainEvent, HomemainState> {HomemainBloc(HomemainState initialState) : super(initialState) { on<HomemainInitialEvent>(_onInitialize); }

_onInitialize(HomemainInitialEvent event, Emitter<HomemainState> emit, ) async  { emit(state.copyWith(homemainModelObj: state.homemainModelObj?.copyWith(buttongridItemList: fillButtongridItemList()))); } 
List<ButtongridItemModel> fillButtongridItemList() { return [ButtongridItemModel(jimny: "JIMNY", priceStarts: "Price starts", price: "₹12.74 LAC", image: ImageConstant.imgRectangle73), ButtongridItemModel(jimny: "S-PRESSO", priceStarts: "Price starts", price: "₹4.25 LAC", image: ImageConstant.imgRectangle105112x180), ButtongridItemModel(jimny: "INVICTO", priceStarts: "Price starts", price: "₹24.79 LAC", image: ImageConstant.imgRectangle100), ButtongridItemModel(jimny: "IGNIS", priceStarts: "Price starts", price: "₹5.84 LAC", image: ImageConstant.imgRectangle122), ButtongridItemModel(jimny: "BREZZA\n", priceStarts: "Price starts", price: "₹8.29 LAC", image: ImageConstant.imgRectangle123), ButtongridItemModel(jimny: "SWIFT BSVI\n", priceStarts: "Price starts", price: "₹5.99 LAC", image: ImageConstant.imgRectangle109), ButtongridItemModel(jimny: "WAGON R BSVI\n", priceStarts: "Price starts", price: "₹5.55 LAC", image: ImageConstant.imgRectangle105)]; } 
 }
