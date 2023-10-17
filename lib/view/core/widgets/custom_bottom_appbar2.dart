import 'package:ecommerce/view/constants/app_colors.dart';
import 'package:ecommerce/view/constants/extention.dart';
import 'package:ecommerce/view/constants/styles.dart';
import 'package:ecommerce/view/features/Cart/Views/cart_view.dart';
import 'package:ecommerce/view/features/Home/views/home_view.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar2 extends StatelessWidget {
  const CustomBottomAppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                context.push(const HomeView());
              },
              icon: const Icon(Icons.share_outlined),
              color: AppColors.white,
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {
                context.push(const CartView());
              },
              icon: const Icon(Icons.favorite),
              color: AppColors.white,
              iconSize: 32,
            ),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: AppColors.white),
                onPressed: () {},
                child: Text(
                  'ADD TO CART',
                  style: MyStyles.textStyle20.copyWith(
                      color: AppColors.black, fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }
}
