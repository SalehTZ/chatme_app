import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget? child;
  final Color? color;
  final BoxDecoration? decoration;
  final EdgeInsets? padding;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.child,
    this.color,
    this.decoration,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      child: Ink(
        color: color,
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: decoration,
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
