import 'package:tradly/image_constants.dart';

class PopularProductList {
  final String image;
  final String productName;
  final String logoText;
  final String price;

  PopularProductList({required this.image, required this.productName, required this.logoText, required this.price});


}
List<PopularProductList> popularProductList = [
  PopularProductList(image: ImageConstants.popularProductListFishImage, productName: 'Fish', logoText: 'Tradly', price: '\$15'),
  PopularProductList(image: ImageConstants.popularProductListShampooImage, productName: 'Shampoo', logoText: 'Tradly', price: '\$25'),
  PopularProductList(image: ImageConstants.popularProductListShampooImage, productName: 'Shampoo', logoText: 'Tradly', price: '\$25'),
];