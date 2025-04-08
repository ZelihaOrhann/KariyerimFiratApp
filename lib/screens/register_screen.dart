import 'package:flutter/material.dart';
import 'homepage.dart'; // Ana sayfa import

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ücretsiz\nHesap Oluştur",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            TextField(decoration: InputDecoration(labelText: "Ad")),
            TextField(decoration: InputDecoration(labelText: "Soyad")),
            TextField(decoration: InputDecoration(labelText: "E-Posta Adresi")),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Şifre",
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            TextField(decoration: InputDecoration(labelText: "Kullanıcı Adı")),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Text("Hizmet sözleşmesini onaylıyorum"),
              ],
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Text("E-İleti gönderilmesine izin veriyorum"),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF800020), // Burgundy
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                // Kayıt başarılı → Anasayfaya yönlendir
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Text("Kayıt Ol", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
