import 'package:flutter/material.dart';
import '../widgets/app_button.dart';

 class WelcomeScreen extends StatelessWidget {
  final VoidCallback onStart;
  final String quizTitle; 
  const WelcomeScreen({super.key,required this.onStart,required this.quizTitle});
   
  @override
  Widget build(BuildContext context) {
    Color appColor = Colors.blue[500] as Color;

    return Scaffold(
      backgroundColor: appColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png', 
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Crazy Quizz',
              style: TextStyle( 
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            AppButton(
              "Start quiz",
              icon: Icons.arrow_forward,
              onTap: onStart,
            ),
          ],
        ),
      ),
    );
  }
}
 
