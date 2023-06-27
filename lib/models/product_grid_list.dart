import 'package:flutter/material.dart';

import '../product_details/beverages_product.dart';

class ProductGridList {
  final String image;
  final String productName;
  final double top;
  final double bottom;
  final double left;
  final double right;

  ProductGridList({required this.image, required this.productName, required this.top, required this.bottom, required this.left, required this.right});


}
 List<ProductGridList> prodList = [
  ProductGridList(image: 'assets/images/Rectangle 28.png', productName: 'Beverages', top: 40, bottom: 20, left: 8, right: 7),
   ProductGridList(image: 'assets/images/Rectangle 29.png', productName: 'Bread&Bakery', top: 40, bottom: 20, left: 0, right: 0),
   ProductGridList(image: 'assets/images/Rectangle 30.png', productName: 'Vegetables', top: 40, bottom: 20, left: 10, right: 8),
   ProductGridList(image: 'assets/images/Rectangle 31.png', productName: 'Fruits', top: 40, bottom: 20, left: 27, right: 0),
   ProductGridList(image: 'assets/images/Rectangle 32.png', productName: 'Egg', top: 40, bottom: 20, left: 35, right: 8),
   ProductGridList(image: 'assets/images/Rectangle 33.png', productName: 'Frozen Veg', top: 40, bottom: 20, left: 8, right: 8),
   ProductGridList(image: 'assets/images/Rectangle 34.png', productName: 'Homecare', top: 40, bottom: 20, left: 13, right: 8),
   ProductGridList(image: 'assets/images/Rectangle 35.png', productName: 'Pet Care', top: 40, bottom: 20, left: 22, right: 8),

 ];