import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/router/routes.dart';
import 'config/theme/dark_theme.dart';
import 'features/main screen/splash_screen.dart';

void main() {
  runApp( const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TicTacToe',
      theme: darkTheme,

      initialRoute: AppRoutes.splashScreen,
      onGenerateRoute: AppRoutes.generateRoute,
      onUnknownRoute: AppRoutes.unknownRoute,
      home: const SplashScreen(), // Start with SplashScreen
    );
  }
}
