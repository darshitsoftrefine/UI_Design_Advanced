import 'dart:ui';

import 'package:tradly/image_constants.dart';
import 'package:tradly/string_constants.dart';
import 'package:tradly/themes/themes.dart';

class OrderHistList {
  final String image;
  final String productName;
  final String butText;
  final String price;
  final double wid;
  final double hei;
  final Color butColor;
  final Color textColor;
  final double widspacing;

  OrderHistList({required this.image, required this.productName, required this.butText, required this.price, required this.wid, required this.hei, required this.butColor, required this.textColor, required this.widspacing});


}
List<OrderHistList> orderHistList = [
  OrderHistList(image: ImageConstants.cocacolaOrderHistoryImage, productName: ConstantStrings.cocacolaText, butText: 'Delievered', price: '\$25', wid: 96, hei: 25, butColor: CustomColors.primaryColor, textColor: CustomColors.secondaryColor, widspacing: 70),
  OrderHistList(image: ImageConstants.cocacolaOrderHistoryImage, productName: ConstantStrings.cocacolaText, butText: 'Order Placed', price: '\$25', wid: 106, hei: 25, butColor: CustomColors.secondaryColor, textColor: CustomColors.primaryColor, widspacing: 87),
  OrderHistList(image: ImageConstants.cocacolaOrderHistoryImage, productName: ConstantStrings.cocacolaText, butText: 'Payment Confirmed', price: '\$25', wid: 155, hei: 23, butColor: CustomColors.secondaryColor, textColor: CustomColors.primaryColor, widspacing: 42),
  OrderHistList(image: ImageConstants.cocacolaOrderHistoryImage, productName: ConstantStrings.cocacolaText, butText: 'Processed', price: '\$25', wid: 96, hei: 25, butColor: CustomColors.secondaryColor, textColor: CustomColors.primaryColor, widspacing: 100),

];