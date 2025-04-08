import 'package:flutter/material.dart';
import 'homepage.dart'; // Ana sayfa import

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const Text(
              "Giriş Yap",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(labelText: "E-Posta Adresi"),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Şifre",
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const Text("Beni Hatırla"),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF800020), // Burgundy
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                // Giriş başarılı → Anasayfaya yönlendir
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text(
                "Giriş Yap",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.business_center,
                  size: 40,
                  color: Colors.blue,
                ), // LinkedIn İkonu
                SizedBox(width: 20),
                Icon(Icons.email, size: 40, color: Colors.red), // Gmail İkonu
              ],
            ),
          ],
        ),
      ),
    );
  }
}
