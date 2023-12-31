import 'package:ecommerce/view/constants/context_extension.dart';
import 'package:flutter/material.dart';

@immutable
final class CustomChangedCircle extends StatelessWidget {
  final bool isSelected;
  final Color color;
  const CustomChangedCircle({
    super.key,
    required this.isSelected,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: CircleAvatar(
        backgroundColor: color.withOpacity(isSelected ? 1 : 0.2),
        radius: isSelected ? 8 : 4,
      ),
    );
  }
}
