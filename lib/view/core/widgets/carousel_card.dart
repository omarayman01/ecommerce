import 'package:ecommerce/model/category_model.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/view/constants/app_colors.dart';
import 'package:ecommerce/view/constants/extention.dart';
import 'package:ecommerce/view/constants/styles.dart';
import 'package:ecommerce/view/features/Catalog/views/catalog_view.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key, this.category, this.product});
  final CategoryModel? category;
  final ProductModel? product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (product == null) {
          context.push(CatalogView(category: category!));
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(
                  product == null ? category!.imgUrl : product!.imgUrl,
                  fit: BoxFit.cover,
                  width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(product == null ? category!.name : '',
                      style: MyStyles.textStyle26.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
