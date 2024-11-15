import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart'; // Import DashboardScreen langsung

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Distribusi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(), // Langsung menuju DashboardScreen tanpa login
    );
  }
}
