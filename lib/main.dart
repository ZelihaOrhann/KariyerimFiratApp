import 'package:flutter/material.dart';
import 'screens/auth_screen.dart'; // Tek bir ekranda giriş & kayıt işlemleri

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kariyerim Fırat',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AuthScreen(), // Yeni giriş/kayıt ekranı
    );
  }
}
