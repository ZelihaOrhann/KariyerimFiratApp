import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.brown[800],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.work_outline), label: 'İlanlar'),
          BottomNavigationBarItem(icon: Icon(Icons.people_outline), label: 'Mentorlük'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Etkinlikler'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Burslar'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Üst Logo ve ikonlar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/anaLogo.jpg',
                    height: 60,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.chat_bubble_outline, size: 28),
                      SizedBox(width: 16),
                      Icon(Icons.notifications_none, size: 28),
                      SizedBox(width: 16),
                      Icon(Icons.person_outline, size: 28),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 20),

              // Başlık bölümü
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.purple.shade100, Colors.purple.shade300],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tek Platformda Staj, Burs, Mentörlük ve Çok Daha Fazlası...',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Bursunu bul, kariyerini inşa et; mentörlerle güçlen, part-time işlerle kazan, etkinliklerle parılda, networkünü büyüt!',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Hoş geldin bölümü
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hoş geldin, Zeynep 👋', style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text('Bugün kariyerin için bir adım atmaya ne dersin?'),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.amber,
                      child: Icon(Icons.person, color: Colors.white),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // CV hazırlama duyurusu
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.pink.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.calendar_today, color: Colors.red),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        'Bugün saat 18.00\'de “CV Hazırlama” Webinarı var. Katılmak ister misin?',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[600],
                      ),
                      child: const Text('Katıl'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Durum çubuğu
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.check_box, color: Colors.green),
                      SizedBox(width: 8),
                      Text('Profil fotoğrafı eklendi'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check_box, color: Colors.green),
                      SizedBox(width: 8),
                      Text('1 ilana başvuruldu'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check_box, color: Colors.green),
                      SizedBox(width: 8),
                      Text('Mentörlük talebi oluşturuldu'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
