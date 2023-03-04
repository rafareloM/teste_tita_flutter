// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final void Function() onPressed;
  final Color color;
  final String colorName;
  final Color? textColor;

  const ColorButton({
    Key? key,
    required this.onPressed,
    required this.color,
    required this.colorName,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: FilledButton(
        style: ButtonStyle(
            shape: const MaterialStatePropertyAll(ContinuousRectangleBorder()),
            fixedSize: MaterialStateProperty.all(const Size.fromHeight(24)),
            backgroundColor: MaterialStateColor.resolveWith((states) => color)),
        onPressed: onPressed,
        child: Text(
          colorName,
          style: TextStyle(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
