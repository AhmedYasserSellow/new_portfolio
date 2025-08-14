import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    this.horizontalSpacing = 16,
    this.verticalSpacing = 16,
    required this.crossAxisCount,
    required this.children,
  });
  final double horizontalSpacing;
  final double verticalSpacing;
  final int crossAxisCount;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final double allChildSpace =
          constraints.maxWidth - (horizontalSpacing * (crossAxisCount - 1));
      final double childWidth = allChildSpace / crossAxisCount;
      return Wrap(
        runSpacing: verticalSpacing,
        spacing: horizontalSpacing,
        children: List.generate(
          children.length,
          (index) => SizedBox(
            width: childWidth,
            child: children[index],
          ),
        ),
      );
    });
  }
}
