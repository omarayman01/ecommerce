import 'package:ecommerce/view/core/widgets/custom_appbar.dart';
import 'package:ecommerce/view/core/widgets/custom_bottom_appbar.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar2(text: "Cart"),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
