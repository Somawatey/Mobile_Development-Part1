import 'package:flutter/material.dart';

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
              const FlutterLogo(
                size: 200.0,

              ),
              const SizedBox(height: 20),
              
              const Text(
                'Crazy Quizz',
                style: TextStyle( 
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: (){
                  //method
                  onStart();

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue[500],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                   ),
                   icon: const Icon(Icons.arrow_forward),
                   label: const Text('Start Quiz',
                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  ),
            ],
          ),
        ),
    );
  }
}
 
