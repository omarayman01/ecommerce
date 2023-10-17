import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/model/category_model.dart';
import 'package:ecommerce/view/core/widgets/carousel_card.dart';
import 'package:flutter/material.dart';

class CarouselCardSlider extends StatelessWidget {
  const CarouselCardSlider({super.key});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1.5,
        viewportFraction: 0.9,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        autoPlay: true,
      ),
      items: CategoryModel.categories
          .map((category) => CarouselCard(category: category))
          .toList(),
    );
  }
}
