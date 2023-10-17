import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/view/constants/data.dart';
import 'package:ecommerce/view/core/widgets/custom_appbar.dart';
import 'package:ecommerce/view/core/widgets/custom_bottom_appbar.dart';
import 'package:ecommerce/view/core/widgets/section_title.dart';
import 'package:ecommerce/view/features/Home/widgets/carousel_slider.dart';
import 'package:ecommerce/view/features/Home/widgets/product_card_slider.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar2(text: appName),
        bottomNavigationBar: const CustomBottomAppBar(),
        body: Column(
          children: [
            const CarouselCardSlider(),
            const SectionTitle(title: 'RECOMMENDED'),
            ProductCardSlider(
                products: ProductModel.products
                    .where((product) => product.isRecommended)
                    .toList()),
            const SectionTitle(title: 'MOST POPULAR'),
            ProductCardSlider(
                products: ProductModel.products
                    .where((product) => product.isPopular)
                    .toList()),
          ],
        ));
    //body: ,
  }
}
