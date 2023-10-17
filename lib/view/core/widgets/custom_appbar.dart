import 'package:ecommerce/view/constants/app_colors.dart';
import 'package:ecommerce/view/constants/extention.dart';
import 'package:ecommerce/view/constants/styles.dart';
import 'package:ecommerce/view/features/Wishlist/views/wishlist_view.dart';
import 'package:flutter/material.dart';

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar2({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 3),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              text,
              style: MyStyles.textstyle24
                  .copyWith(color: AppColors.white, fontFamily: 'Avenir'),
            ),
          ),
          const Spacer(flex: 2),
          IconButton(
            onPressed: () {
              context.push(const WishListView());
            },
            icon: const Icon(Icons.favorite),
            color: AppColors.black,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}
