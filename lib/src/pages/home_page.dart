import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/church1.jpg',
      'assets/images/church2.jpg',
      'assets/images/church3.jpg',
      'assets/images/church4.jpg',
      'assets/images/church5.jpg',
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Accueil'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 76, 120, 214),
      ),
      body: SingleChildScrollView(

        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Slider ---
            CarouselSlider(
              options: CarouselOptions(
                height: 180,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
              ),
              items: images.map((img) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(img, fit: BoxFit.cover, width: 1000),
                );
              }).toList(),
            ),

            const SizedBox(height: 16),

            // --- Message de bienvenue ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Bienvenue à l’Église de Dieu de Bethel ✨',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),

            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Nous sommes heureux de vous accueillir. '
                'Partageons ensemble la foi, l’amour et la communion fraternelle.',
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
            ),

            const SizedBox(height: 20),

            // --- Verset du jour ---
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '📖 Verset du jour',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '« Louez l\'Éternel, car il est bon, car sa miséricorde dure à toujours. »\n— Psaume 136:1',
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // --- Bouton Regarder le live ---
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 76, 120, 214),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/live');
                },
                icon: const Icon(Icons.play_circle_fill, size: 24),
                label: const Text('Regarder le live',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              ),
            ),

            const SizedBox(height: 30),

            // --- Accès rapide ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Accès rapide',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 76, 120, 214)),
              ),
            ),
            const SizedBox(height: 10),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              childAspectRatio: 1,
              padding: const EdgeInsets.all(12),
              children: [
                _quickAccess(
                    context, Icons.qr_code_scanner, 'Présence', '/presence'),
                _quickAccess(
                    context, Icons.volunteer_activism, 'Faire un don', '/don'),
                _quickAccess(context, Icons.event, 'Événements', '/evenements'),
                _quickAccess(context, Icons.book, 'Sermons', '/sermons'),
                _quickAccess(context, Icons.favorite, 'Prière', '/priere'),
                _quickAccess(context, Icons.person, 'Profil', '/profil'),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _quickAccess(
      BuildContext context, IconData icon, String label, String route) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade100,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Icon(icon, color: Colors.deepPurple, size: 28),
          ),
          const SizedBox(height: 8),
          Text(label,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
