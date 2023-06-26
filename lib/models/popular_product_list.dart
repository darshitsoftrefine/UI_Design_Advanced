class PopularProductList {
  final String image;
  final String productName;
  final String logoText;
  final String price;

  PopularProductList({required this.image, required this.productName, required this.logoText, required this.price});


}
List<PopularProductList> popularProductList = [
  PopularProductList(image: 'assets/images/fish_pop.png', productName: 'Fish', logoText: 'Tradly', price: '\$15'),
  PopularProductList(image: 'assets/images/shampoo_pop.png', productName: 'Shampoo', logoText: 'Tradly', price: '\$25'),
  PopularProductList(image: 'assets/images/shampoo_pop.png', productName: 'Shampoo', logoText: 'Tradly', price: '\$25'),
];