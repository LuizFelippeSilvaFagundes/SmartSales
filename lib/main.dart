import 'package:flutter/material.dart';
import 'DashBoard/DashboardScreen.dart';
import 'ScreensAutenticator/CompanyInfoScreen.dart';
import 'ScreensAutenticator/Login.dart';
import 'ScreensAutenticator/RegistrationSuccessScreen.dart';
import 'ScreensAutenticator/ValidacaoCelular.dart';
import 'ScreensAutenticator/InviteTeamMembersScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Login', // Define a tela de login como a tela inicial
      routes: {
        '/Login': (context) => const LoginScreen(), // Tela de login existente
        '/ValidacaoCelular': (context) => const PhoneValidationScreen(),
        '/CompanyInfoScreen': (context) => const CompanyInfoScreen(),
        '/InviteTeamMembersScreen': (context) => const InviteTeamMembersScreen(),
        '/RegistrationSucessScreen': (context) => const RegistrationSuccessScreen(),
        '/DashBoardScreen': (context) => const DashboardScreen(),
      },
    );
  }
}