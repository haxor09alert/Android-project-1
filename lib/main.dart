import 'package:flutter/material.dart';
import 'package:tailormade/screens/dashboard_screen.dart';
import 'package:tailormade/screens/login_screen.dart';
import 'package:tailormade/screens/theme/theme_data.dart';
import 'package:tailormade/state/objectbox_state.dart';

import 'helper/objectbox.dart';
import 'screens/splash_screen.dart';
import 'screens/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ObjectBoxState.objectBoxInstance = await ObjectBoxInstance.init();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Font and Theme',
      theme: getApplicationTheme(),
      initialRoute: '/SplashScreen',
      routes: {
        '/LoginScreen': (context) => const LoginScreen(),
        '/SplashScreen': (context) => const SplashScreen(),
        '/RegisterScreen': (context) => const RegisterScreen(),
        '/DashboardScreen': (context) => DashboardScreen(),
      },
    ),
  );
}
