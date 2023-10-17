import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String name;
  final String category;
  final String imgUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const ProductModel(
      {required this.name,
      required this.category,
      required this.imgUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  List<Object?> get props =>
      [name, category, imgUrl, price, isRecommended, isPopular];

  static List<ProductModel> products = const [
    ProductModel(
        name: "Smoothie #1",
        category: "Smoothies",
        imgUrl:
            'https://images.unsplash.com/photo-1628557044797-f21a177c37ec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
        price: 1.99,
        isRecommended: true,
        isPopular: false),
    ProductModel(
        name: "Smoothie #2",
        category: "Smoothies",
        imgUrl:
            'https://images.unsplash.com/photo-1615478503562-ec2d8aa0e24e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
        price: 3.99,
        isRecommended: true,
        isPopular: false),
    ProductModel(
        name: "Smoothie #3",
        category: "Smoothies",
        imgUrl:
            'https://images.unsplash.com/photo-1623065422902-30a2d299bbe4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
        price: 2.99,
        isRecommended: false,
        isPopular: true),
    ProductModel(
        name: "Water #1",
        category: "Water",
        imgUrl:
            'https://images.unsplash.com/photo-1522643628976-0a170f6722ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
        price: 0.99,
        isRecommended: false,
        isPopular: true),
    ProductModel(
        name: "SoftDrink #1",
        category: "Soft Drinks",
        imgUrl:
            'https://images.unsplash.com/photo-1543253687-c931c8e01820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1365&q=80',
        price: 1.99,
        isRecommended: true,
        isPopular: false),
    ProductModel(
        name: "SoftDrink #2",
        category: "Soft Drinks",
        imgUrl:
            'https://images.unsplash.com/photo-1613509891072-dd34167bc550?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
        price: 2.99,
        isRecommended: false,
        isPopular: true)
  ];
}
