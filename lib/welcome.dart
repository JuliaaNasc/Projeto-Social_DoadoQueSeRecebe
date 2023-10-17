import 'package:flutter/material.dart';
import 'package:projeto_social/main_screen.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/logo.png',
            width: 380,
          ),
          Image.asset(
            'assets/wave_red.jpg',
           
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 160,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                  return const MainScreen();
                }));
              },
              child: const Text(
                'Entrar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Monserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
