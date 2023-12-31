import 'package:flutter/material.dart';
import 'package:projeto_social/pages/about_us.dart';
import 'package:projeto_social/pages/contact.dart';
import 'package:projeto_social/pages/contribute.dart';
import 'package:projeto_social/pages/developers.dart';
import 'package:projeto_social/pages/gallery.dart';
import 'package:projeto_social/pages/start.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget body = Start();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 45),
            Image.asset(
              'assets/logo.png',
              width: 200,
            ),
            Image.asset(
              'assets/wave_red.png',
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.home),
              onTap: () {
                setState(() {
                  body = const Start();
                });
              },
              title: const Text(
                'Inicio',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.photo_library),
              onTap: () {
                setState(() {
                  body = Gallery(
                     hasAppBar: false,
                  );
                });
              },
              title: const Text(
                'Galeria',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.group),
              onTap: () {
                setState(() {
                  body = Contact(
                    hasAppBar: false,
                  );
                });
              },
              title: const Text(
                'Contato',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              onTap: () {
                setState(() {
                  body = AboutUs(
                    hasAppBar: false,
                  );
                });
              },
              title: const Text(
                'Quem Somos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.volunteer_activism_outlined),
              onTap: () {
                setState(() {
                  body = Contribute(
                    hasAppBar: false,
                  );
                });
              },
              title: const Text(
                'Quero Contribuir',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.code),
              onTap: () {
                setState(() {
                  body = Developers(
                    hasAppBar: false,
                  );
                });
              },
              title: const Text(
                'Desenvolvedores',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 110,
        centerTitle: true,
        scrolledUnderElevation: 1,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/logo.png',
          width: 200,
        ),
      ),
      body: body,
    );
  }
}
