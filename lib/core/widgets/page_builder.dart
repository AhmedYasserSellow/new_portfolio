import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/footer.dart';
import 'package:flutter/material.dart';

class PageBuilder extends StatelessWidget {
  const PageBuilder({
    super.key,
    required this.children,
  });
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      desktop: (context) => ListView.separated(
        itemCount: children.length + 1,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal:
                index == children.length ? 0 : AppPadding.desktopPadding,
          ),
          child: index == children.length ? const Footer() : children[index],
        ),
        separatorBuilder: (context, index) {
          // Don't add separator before the footer
          if (index == children.length - 1) {
            return const SizedBox.shrink();
          }
          return const SizedBox(height: 72);
        },
      ),
      mobile: (context) => ListView.separated(
        itemCount: children.length + 1,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal: index == children.length ? 0 : AppPadding.mobilePadding,
          ),
          child: index == children.length ? const Footer() : children[index],
        ),
        separatorBuilder: (context, index) {
          // Don't add separator before the footer
          if (index == children.length - 1) {
            return const SizedBox.shrink();
          }
          // Reduce spacing for mobile view
          return const SizedBox(height: 32);
        },
      ),
      tablet: (context) => ListView.separated(
        itemCount: children.length + 1,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal: index == children.length ? 0 : AppPadding.tabletPadding,
          ),
          child: index == children.length ? const Footer() : children[index],
        ),
        separatorBuilder: (context, index) {
          // Don't add separator before the footer
          if (index == children.length - 1) {
            return const SizedBox.shrink();
          }
          // Reduce spacing for tablet view
          return const SizedBox(height: 48);
        },
      ),
    );
  }
}
