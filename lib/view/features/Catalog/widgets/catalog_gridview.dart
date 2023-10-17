import 'package:ecommerce/model/category_model.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/view/core/widgets/product_card.dart';
import 'package:flutter/material.dart';

class CatalogGridView extends StatelessWidget {
  const CatalogGridView({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> categoryProducts = ProductModel.products
        .where((product) => product.category == category.name)
        .toList();

    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.1),
        itemCount: categoryProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: ProductCard(
              product: categoryProducts[index],
              widthFactor: 2.1,
            ),
          ));
        });
  }
}
