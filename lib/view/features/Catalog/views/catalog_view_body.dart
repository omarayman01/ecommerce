import 'package:ecommerce/model/category_model.dart';
import 'package:ecommerce/view/core/widgets/custom_appbar.dart';
import 'package:ecommerce/view/core/widgets/custom_bottom_appbar.dart';
import 'package:ecommerce/view/features/Catalog/widgets/catalog_gridview.dart';
import 'package:flutter/material.dart';

class CatalogViewBody extends StatelessWidget {
  const CatalogViewBody({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(text: category.name),
      bottomNavigationBar: const CustomBottomAppBar(),
      body: CatalogGridView(
        category: category,
      ),
      //ProductCard(product: ProductModel.products[0]),
    );
  }
}
