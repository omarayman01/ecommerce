import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/view/constants/app_colors.dart';
import 'package:ecommerce/view/constants/styles.dart';
import 'package:ecommerce/view/core/widgets/custom_appbar.dart';
import 'package:ecommerce/view/core/widgets/custom_bottom_appbar2.dart';
import 'package:ecommerce/view/core/widgets/section_title.dart';
import 'package:ecommerce/view/features/Product/widgets/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(text: product.name),
      bottomNavigationBar: const CustomBottomAppBar2(),
      body: ListView(
        children: [
          CarouselCardSliderProduct(product: product),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: AppColors.black.withAlpha(50),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 50,
                  color: AppColors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: MyStyles.textstyle18
                              .copyWith(color: AppColors.white),
                        ),
                        Text(
                          '${product.price}',
                          style: MyStyles.textstyle18.copyWith(
                            color: AppColors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ExpansionTile(
              title: SectionTitle(title: "Product Information"),
              initiallyExpanded: true,
              textColor: AppColors.black,
              iconColor: AppColors.black,
              children: [
                ListTile(
                  title: Text(
                    "We are smoothie crazy in my house, we make smoothies almost daily including pineapple smoothies, blueberry smoothies and this simple mixed berry smoothie",
                    style: MyStyles.textstyle14,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ExpansionTile(
              title: SectionTitle(title: "Delivery Information"),
              initiallyExpanded: false,
              textColor: AppColors.black,
              iconColor: AppColors.black,
              children: [
                ListTile(
                  title: Text(
                    "We are smoothie crazy in my house, we make smoothies almost daily including pineapple smoothies, blueberry smoothies and this simple mixed berry smoothie",
                    style: MyStyles.textstyle14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
