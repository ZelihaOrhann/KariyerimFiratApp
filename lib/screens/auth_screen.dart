import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true; // Başlangıçta giriş ekranı gösterilecek

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Üst Menü - Logo + Butonlar
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/anaLogo.jpg', // Logo
                  height: 60,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isLogin = true;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            "Giriş Yap",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: isLogin ? FontWeight.bold : FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          if (isLogin)
                            Container(
                              width: 40,
                              height: 2,
                              color: Colors.black,
                              margin: EdgeInsets.only(top: 2),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isLogin = false;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            "Kayıt Ol",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: !isLogin ? FontWeight.bold : FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          if (!isLogin)
                            Container(
                              width: 40,
                              height: 2,
                              color: Colors.black,
                              margin: EdgeInsets.only(top: 2),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: isLogin ? LoginScreen() : RegisterScreen(),
          ),
        ],
      ),
    );
  }
}
