import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/view/features/Product/views/product_view_body.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return ProductViewBody(product: product);
  }
}
