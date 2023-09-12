import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xo/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff100B20),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/one.png'),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/hands play-tic-tac-toe/tic tac toe.jpg'),
              ),
            ),
          ),
          const SizedBox(height: 50),
          CupertinoButton.filled(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return const HomeScreen();
                  },
                ),
              );
            },
            child: const Text('Let`s play !'),
          )
        ],
      ),
    );
  }
}
