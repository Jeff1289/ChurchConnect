import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/live_page.dart';
import 'pages/presence_page.dart';
import 'pages/donate_page.dart';
import 'pages/profile_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eglise App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainShell(),
    );
  }
}

class MainShell extends StatefulWidget {
  const MainShell({super.key});
  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _currentIndex = 0;
  final _pages = const [
    HomePage(),
    LivePage(),
    PresencePage(),
    DonatePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library), label: 'Live'),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner), label: 'Présence'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Don'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        onTap: (i) => setState(() => _currentIndex = i),
      ),
    );
  }
}
