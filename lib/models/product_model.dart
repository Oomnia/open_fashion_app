class ProductModel {
  final String imgpath;
  final String title;

  final String subtitle;
  final double price;

  ProductModel({
    required this.imgpath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  static List<ProductModel> products = [
    ProductModel(
      imgpath: 'assets/products/product4.png',
      title: 'Summer Collection',
      subtitle: 'reversible angora cardigan',
      price: 29.99,
    ),
     ProductModel(
      imgpath: 'assets/products/product3.png',
      title: 'Winter Collection',
      subtitle: 'New arrivals',
      price: 100,
    ),
     ProductModel(
      imgpath: 'assets/products/product2.png',
      title: 'Summer Collection',
      subtitle: 'New arrivals',
      price: 50,
    ),
     ProductModel(
      imgpath: 'assets/products/product7.png',
      title: 'Summer Collection',
      subtitle: 'New arrivals',
      price: 29.99,
    ),
     ProductModel(
      imgpath: 'assets/products/product6.png',
      title: 'Summer Collection',
      subtitle: 'New arrivals',
      price: 29.99,
    ),
     ProductModel(
      imgpath: 'assets/products/product5.png',
      title: 'Summer Collection',
      subtitle: 'New arrivals',
      price: 29.99,
    ),
  ];
}
