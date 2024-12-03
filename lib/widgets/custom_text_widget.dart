import 'package:flutter/material.dart';

class SubTitleText extends StatelessWidget {
  const SubTitleText(
    this.subTitle, {
    super.key,
  });
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: const TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText(this.title, {super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: 'Inter',
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
