import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class OneRowContainer extends StatelessWidget {
  const OneRowContainer(
      {super.key,
      required this.child,
      this.padding = const EdgeInsets.all(8),
      this.border});
  final Widget child;
  final EdgeInsets padding;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        border: border ?? Border.all(color: AppColors.secondaryColor),
      ),
      child: child,
    );
  }
}

class TwoRowContainer extends StatelessWidget {
  const TwoRowContainer(
      {super.key, required this.firstChild, required this.secondChild});
  final Widget firstChild, secondChild;
  @override
  Widget build(BuildContext context) {
    return OneRowContainer(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: firstChild,
          ),
          Container(
            height: 1,
            color: AppColors.secondaryColor,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: secondChild,
          ),
        ],
      ),
    );
  }
}

class ThreeRowContainer extends StatelessWidget {
  const ThreeRowContainer(
      {super.key,
      required this.firstChild,
      required this.secondChild,
      required this.thirdChild});
  final Widget firstChild, secondChild, thirdChild;
  @override
  Widget build(BuildContext context) {
    return OneRowContainer(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            firstChild,
            Container(
              // width: double.infinity,
              height: 1,
              color: AppColors.secondaryColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: secondChild,
            ),
            Container(
              // width: double.infinity,
              height: 1,
              color: AppColors.secondaryColor,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: thirdChild,
            ),
          ],
        ));
  }
}
