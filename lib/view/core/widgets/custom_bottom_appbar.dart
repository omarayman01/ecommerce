import 'package:ecommerce/view/constants/app_colors.dart';
import 'package:ecommerce/view/constants/extention.dart';
import 'package:ecommerce/view/features/Cart/Views/cart_view.dart';
import 'package:ecommerce/view/features/Home/views/home_view.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                context.push(const HomeView());
              },
              icon: const Icon(Icons.home),
              color: AppColors.white,
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {
                context.push(const CartView());
              },
              icon: const Icon(Icons.shopping_cart),
              color: AppColors.white,
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {
                context.push(const HomeView());
              },
              icon: const Icon(Icons.person),
              color: AppColors.white,
              iconSize: 32,
            )
          ],
        ),
      ),
    );
  }
}
