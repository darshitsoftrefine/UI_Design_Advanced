import 'package:tradly/image_constants.dart';

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
  ProductGridList(image: ImageConstants.productGridListBeveragesImage, productName: 'Beverages', top: 40, bottom: 20, left: 8, right: 7),
   ProductGridList(image: ImageConstants.productGridListBreadImage, productName: 'Bread&Bakery', top: 40, bottom: 20, left: 0, right: 0),
   ProductGridList(image: ImageConstants.productGridListVegetablesImage, productName: 'Vegetables', top: 40, bottom: 20, left: 10, right: 8),
   ProductGridList(image: ImageConstants.productGridListFruitsImage, productName: 'Fruits', top: 40, bottom: 20, left: 27, right: 0),
   ProductGridList(image: ImageConstants.productFridListEggImage, productName: 'Egg', top: 40, bottom: 20, left: 35, right: 8),
   ProductGridList(image: ImageConstants.productGridListFrozenVegImage, productName: 'Frozen Veg', top: 40, bottom: 20, left: 8, right: 8),
   ProductGridList(image: ImageConstants.productGridListHomeCareImage, productName: 'Homecare', top: 40, bottom: 20, left: 13, right: 8),
   ProductGridList(image: ImageConstants.productGridListPetCareImage, productName: 'Pet Care', top: 40, bottom: 20, left: 22, right: 8),

 ];