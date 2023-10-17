import 'package:ecommerce/view/constants/styles.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: MyStyles.textStyle20.copyWith(
              fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
