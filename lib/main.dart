import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trial/appointment/personalised_advice.dart';
import 'package:trial/menu/menu_page.dart';
import 'package:trial/pages/login_page.dart';  // Your login page
import 'package:trial/themes/theme_provider.dart';
 // Ensure you have this file for ThemeProvider

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),  // Provide ThemeProvider
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the ThemeProvider instance here
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LoginPage(),  // Replace with your actual login page or home screen
      theme: themeProvider.themeData, 
       // Use the theme from the provider

       routes: {
        '/menu/menu_page':(context) => MenuPage(),
        //'/appointment/personalised_advice': (context) => AppointmentPage(), 
        '/personalised_advice':(context) => AppointmentPage(),
       },
    );
  }
}
