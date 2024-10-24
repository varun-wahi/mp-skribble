import 'package:flutter/material.dart';
import 'package:mp_tictactoe/features/main%20screen/presentation/pages/main_menu_screen.dart';
import 'dart:async';

import '../../config/theme/text_styles.dart';
import '../../core/util/constants/color_grid.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to OnboardingScreen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/main-menu');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "TicTacToe",
            style: boldHeading(color: tWhite, size: 40),
          ),
          // child: Image.asset(
          //   'assets/images/car_logo.png',
          //   width: MediaQuery.sizeOf(context).width,
          //   color: tWhite,
          // ),
        ),
      ),
    );
  }
}
