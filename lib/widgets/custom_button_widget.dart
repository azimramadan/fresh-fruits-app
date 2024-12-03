import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    super.key,
    this.onPressed,
    required this.text,
    required this.color,
    required this.backgroundColor,
    this.borderColor,
  });
  final void Function()? onPressed;
  final String text;
  final Color color;
  final Color backgroundColor;

  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: const Size(double.infinity, 60),
          side: BorderSide(
            color: borderColor ?? backgroundColor,
            width: 3,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
