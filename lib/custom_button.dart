import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? highlightColor;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final Widget child;
  final Function()? onPressed;

  const CustomButton({
    Key? key,
    this.highlightColor,
    this.padding,
    required this.child,
    this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(5.0),
        backgroundColor: WidgetStateProperty.all(color),
        padding: WidgetStateProperty.all(padding),
        overlayColor: WidgetStateProperty.all(highlightColor),
      ),
    );
  }
}
