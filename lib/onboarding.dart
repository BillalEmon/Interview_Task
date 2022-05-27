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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(controller.onboardingPages[index].images),
                  SizedBox(height: 35),
                  Text(controller.onboardingPages[index].titles, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),),
                  SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      controller.onboardingPages[index].descriptions,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                  ),
                ],
              ),
            );
          }),
    );
  }
}