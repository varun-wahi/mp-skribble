import 'package:flutter/material.dart';
import 'package:mp_tictactoe/config/theme/responsive.dart';
import 'package:mp_tictactoe/config/theme/text_styles.dart';
import 'package:mp_tictactoe/core/util/constants/color_grid.dart';
import 'package:mp_tictactoe/core/util/constants/sizes.dart';
import 'package:mp_tictactoe/core/util/widgets/d_elevated_button.dart';
import 'package:mp_tictactoe/core/util/widgets/d_gap.dart';
import 'package:mp_tictactoe/core/util/widgets/d_text_field.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _roomIdController =  TextEditingController();

  @override
  void initState() {
    super.initState();
    print('Create Room');
  }

  @override
  void dispose(){
    super.dispose();
    _roomIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Responsive(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(dPadding * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create Room Screen",
          
                  style: TextStyle(color: tWhite, fontSize: 50, fontWeight: FontWeight.bold ,shadows: [Shadow(color: tBlue, blurRadius: 45.0 )]),
                ),
                const DGap(multiplier: 5),
                DTextField(
                  controller: _roomIdController,
                  icon: Icons.confirmation_num_rounded,
                  hintText: "Enter room ID",
                  borderRadius: dBorderRadius,
                ),
                const DGap(multiplier: 2),
                DElevatedButton(
                    onPressed: () {}, child: const Text("Create Room"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
