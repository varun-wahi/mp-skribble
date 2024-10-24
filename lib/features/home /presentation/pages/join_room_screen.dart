import 'package:flutter/material.dart';
import 'package:mp_tictactoe/config/theme/responsive.dart';

import '../../../../config/theme/text_styles.dart';
import '../../../../core/util/constants/color_grid.dart';
import '../../../../core/util/constants/sizes.dart';
import '../../../../core/util/widgets/d_elevated_button.dart';
import '../../../../core/util/widgets/d_gap.dart';
import '../../../../core/util/widgets/d_text_field.dart';

class JoinRoomScreen extends StatefulWidget {

  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController =  TextEditingController();
  final TextEditingController _roomIdController =  TextEditingController();

    @override
  void dispose(){
    super.dispose();
    _roomIdController.dispose();
    _nameController.dispose();
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
                  "Join Room",
                  style: TextStyle(color: tWhite, fontSize: 50, fontWeight: FontWeight.bold ,shadows: [Shadow(color: tBlue, blurRadius: 55.0 )]),
                ),
                const DGap(multiplier: 5),
                DTextField(
                  controller: _nameController,
                  
                  hasBorder: true,
                  icon: Icons.confirmation_num_rounded,
                  hintText: "Enter Name",
                  borderRadius: dBorderRadius,
                ),
                const DGap(multiplier: 2),
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