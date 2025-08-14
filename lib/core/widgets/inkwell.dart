import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  const CustomInkWell({super.key, this.child, this.onTap});
  final Widget? child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: child,
    );
  }
}
