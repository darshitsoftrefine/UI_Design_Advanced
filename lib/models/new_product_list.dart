class NewProductList {
  final String image;
  final String productName;
  final String logoText;
  final String price;

  NewProductList({required this.image, required this.productName, required this.logoText, required this.price});


}
List<NewProductList> newProductList = [
  NewProductList(image: 'assets/images/cocacola.png', productName: 'CocaCola', logoText: 'Tradly', price: '\$25'),
  NewProductList(image: 'assets/images/brocolli.png', productName: 'Brocolli', logoText: 'Tradly', price: '\$25'),
  NewProductList(image: 'assets/images/cocacola.png', productName: 'CocaCola', logoText: 'Tradly', price: '\$25'),
];