import 'package:flutter/material.dart';
import 'package:fresh_fruits_app/helpers/onboarding_text_body.dart';
import 'package:fresh_fruits_app/widgets/custom_button_widget.dart';

class OnboardingView extends StatefulWidget {
  static String viewId = 'OnboardingView';

  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 22),
                child: currentPage == 1
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            currentPage = 0;
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 28,
                          color: Color(0xffE67F1E),
                        ),
                      )
                    : const SizedBox(height: 48),
              )
            ],
          ),
          currentPage == 2
              ? Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 80),
                  child: Image.asset('assets/images/Group_439.png'),
                )
              : Image.asset('assets/images/image_6.png'),
          onboardingViewTextBody(index: currentPage),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 6,
                  width: 23,
                  decoration: BoxDecoration(
                    color: currentPage == index ? Colors.green : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                );
              }),
            ),
          ),
          currentPage != 2
              ? NextButtonWidget(
                  onPressed: () {
                    setState(() {
                      currentPage == 0 ? currentPage = 1 : currentPage = 2;
                    });
                  },
                  text: 'NEXT',
                  color: Colors.black,
                  backgroundColor: const Color(0xffFEC54B),
                )
              : NextButtonWidget(
                  onPressed: () {},
                  text: 'Create an account',
                  color: Colors.white,
                  backgroundColor: Colors.black,
                ),
          const SizedBox(height: 20),
          NextButtonWidget(
            onPressed: () {},
            text: 'Login',
            color: Colors.black,
            backgroundColor: Colors.white,
            borderColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
