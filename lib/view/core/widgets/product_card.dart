import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/view/constants/app_colors.dart';
import 'package:ecommerce/view/constants/extention.dart';
import 'package:ecommerce/view/constants/styles.dart';
import 'package:ecommerce/view/features/Product/views/product_view.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key, required this.product, required this.widthFactor});
  final ProductModel product;
  final double widthFactor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => context.push(ProductView(product: product)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / widthFactor,
            height: 150,
            child: Image.network(
              product.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 60,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: 80,
            decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
          ),
        ),
        Positioned(
          top: 65,
          left: 5,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5 - 10,
            height: 70,
            decoration: BoxDecoration(color: Colors.black.withAlpha(180)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.name,
                            style: MyStyles.textstyle14.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w400)),
                        Text('\$${product.price}',
                            style: MyStyles.textstyle14.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle,
                          color: AppColors.white,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
