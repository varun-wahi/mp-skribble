import 'package:flutter/material.dart';
import 'package:mp_tictactoe/core/util/widgets/no_data_page.dart';
import 'package:mp_tictactoe/features/home%20/presentation/pages/create_room_screen.dart';
import 'package:mp_tictactoe/features/home%20/presentation/pages/join_room_screen.dart';
import 'package:mp_tictactoe/features/main%20screen/presentation/pages/main_menu_screen.dart';
import 'package:mp_tictactoe/features/main%20screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/';
  static const String mainMenu = '/main-menu';
  static const String settings = '/settings';
  static const String createRoom = '/create-room';
  static const String joinRoom = '/join-room';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) =>  const SplashScreen());
      case mainMenu:
        return MaterialPageRoute(builder: (_) => const MainMenuScreen());
      case createRoom:
        return MaterialPageRoute(builder: (_) => const CreateRoomScreen());
      case joinRoom:
        return MaterialPageRoute(builder: (_) => const JoinRoomScreen());

      default:
        // Route for unknown paths
        return MaterialPageRoute(
            builder: (_) => const NoDataFoundPage()); // Unknown route screen
    }
  }

  static Route<dynamic> unknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => const NoDataFoundPage(),
    );
  }
}