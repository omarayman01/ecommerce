import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/view/core/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductCardSlider extends StatelessWidget {
  const ProductCardSlider({super.key, required this.products});
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5, bottom: 10, top: 10),
            child: ProductCard(
              product: products[index],
              widthFactor: 2.5,
            ),
          );
        },
      ),
    );
  }
}
