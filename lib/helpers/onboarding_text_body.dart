import 'package:flutter/material.dart';
import 'package:fresh_fruits_app/widgets/custom_text_widget.dart';

Column onboardingViewTextBody({required int index}) {
  if (index == 0) {
    return const Column(
      children: [
        TitleText('Welcome to Fresh Fruits'),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 9.0),
          child: Text(
            'Grocery application',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: SubTitleText('Lorem ipsum dolor sit amet, consectetur'),
        ),
        SubTitleText('adipiscing elit, sed do eiusmod tempor'),
      ],
    );
  } else if (index == 1) {
    return const Column(
      children: [
        TitleText('We provide best quality'),
        TitleText('Fruits to your family'),
        Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: SubTitleText('Lorem ipsum dolor sit amet, consectetur'),
        ),
        SubTitleText('adipiscing elit, sed'),
      ],
    );
  } else {
    return const Column(
      children: [
        TitleText('Fast and responsibily'),
        TitleText('delivery by our courir'),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: SubTitleText('Lorem ipsum dolor sit amet, consectetur'),
        ),
        SubTitleText('adipiscing elit, sed do eiusmod tempor'),
      ],
    );
  }
}
