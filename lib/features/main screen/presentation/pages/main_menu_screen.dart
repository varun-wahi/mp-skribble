import 'package:flutter/material.dart';
import 'package:mp_tictactoe/config/theme/responsive.dart';
import 'package:mp_tictactoe/core/util/constants/sizes.dart';
import 'package:mp_tictactoe/core/util/widgets/d_elevated_button.dart';
import 'package:mp_tictactoe/core/util/widgets/d_gap.dart';

import '../../../../core/util/constants/color_grid.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Padding(
          padding: const EdgeInsets.all(dPadding * 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Welcome to TicTacToe",
                  style: TextStyle(color: tWhite, fontSize: 50, fontWeight: FontWeight.bold ,shadows: [Shadow(color: tBlue, blurRadius: 55.0 )]),
                ),
                const DGap(multiplier: 5),
              DElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed("/create-room");
              }, child: const Text("Create Room")),
              const DGap(),
              DElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed('/join-room');
              }, child: const Text("Join Room"))
              
            ],
          ),
        ),
      ),
    );
  }
}