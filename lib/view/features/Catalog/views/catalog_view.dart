import 'package:ecommerce/model/category_model.dart';
import 'package:ecommerce/view/features/Catalog/views/catalog_view_body.dart';
import 'package:flutter/material.dart';

class CatalogView extends StatelessWidget {
  const CatalogView({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return CatalogViewBody(category: category);
  }
}
