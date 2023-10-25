import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_social/models/developer_model.dart';

class DeveloperScreen extends StatelessWidget {
  DeveloperScreen({
    required this.developer,
    super.key,
  });

  DeveloperModel developer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 72,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 68,
                    child: Icon(
                      Icons.person,
                      size: 75,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                    size: 37,
                  ),
                  title: const Text(
                    'Nome:',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    developer.name,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.email,
                    size: 37,
                  ),
                  title: const Text(
                    'Email:',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    developer.email ?? 'Indisponivel',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    FontAwesomeIcons.github,
                    size: 37,
                  ),
                  title: const Text(
                    'GitHub:',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    developer.github ?? 'Indisponivel',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    FontAwesomeIcons.linkedin,
                    size: 37,
                  ),
                  title: const Text(
                    'Linkedin:',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    developer.linkedin ?? 'Indisponivel',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    FontAwesomeIcons.instagram,
                    size: 37,
                  ),
                  title: const Text(
                    'Instagram:',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    developer.instagram ?? 'Indisponivel',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/wave_red.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
