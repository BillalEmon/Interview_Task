import 'package:flutter/material.dart';
import 'package:todo_app/onboarding_controller.dart';


class OnboardingPage extends StatelessWidget {
  final controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: controller.onboardingPages.length,
          itemBuilder: (context,index){
        return Container(
          child: Column(
            children: [
              Image.asset(controller.onboardingPages[index].images),
              Text(controller.onboardingPages[index].titles),
              Text(controller.onboardingPages[index].descriptions),
            ],
          ),
        );
      }),
    );
  }
}
