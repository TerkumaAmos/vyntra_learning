import 'package:flutter/material.dart';
import 'package:vyntra_learn/core/resources/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final DecorationImage? image;

  const CustomContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.borderRadius,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.border,
    this.boxShadow,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 56,
      padding: padding ?? const EdgeInsets.all(12),
      margin: margin ?? const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        border: border ?? Border.all(color: AppColors.lineColor, width: 1),
        boxShadow: boxShadow,
        image: image,
      ),
      child: child,
    );
  }
}
