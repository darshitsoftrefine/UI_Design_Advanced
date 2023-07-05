import 'package:tradly/image_constants.dart';

class NewProductList {
  final String image;
  final String productName;
  final String logoText;
  final String price;

  NewProductList({required this.image, required this.productName, required this.logoText, required this.price});


}
List<NewProductList> newProductList = [
  NewProductList(image: ImageConstants.newProductListCocaColaImage, productName: 'CocaCola', logoText: 'Tradly', price: '\$25'),
  NewProductList(image: ImageConstants.newProductListBrocolliImage, productName: 'Brocolli', logoText: 'Tradly', price: '\$25'),
  NewProductList(image: ImageConstants.newProductListCocaColaImage, productName: 'CocaCola', logoText: 'Tradly', price: '\$25'),
];