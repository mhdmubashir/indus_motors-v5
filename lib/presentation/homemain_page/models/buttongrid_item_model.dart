import '../../../core/app_export.dart';/// This class is used in the [buttongrid_item_widget] screen.
class ButtongridItemModel {ButtongridItemModel({this.jimny, this.priceStarts, this.price, this.image, this.id, }) { jimny = jimny  ?? "JIMNY";priceStarts = priceStarts  ?? "Price starts";price = price  ?? "₹12.74 LAC";image = image  ?? ImageConstant.imgRectangle73;id = id  ?? ""; }

String? jimny;

String? priceStarts;

String? price;

String? image;

String? id;

 }
