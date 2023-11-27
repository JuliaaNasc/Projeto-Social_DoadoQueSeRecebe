import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_social/models/developer_model.dart';
import 'package:projeto_social/pages/photos_gallery.dart';
import 'package:url_launcher/url_launcher.dart';

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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) {
                        return PhotosGallery(imagem: developer.photo!);
                      }),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 76,
                    child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 72,
                        foregroundImage: developer.photo != null
                            ? Image.asset(
                                developer.photo!,
                                width: 250,
                              ).image
                            : null,
                        child: const Icon(
                          Icons.person,
                          size: 75,
                          color: Colors.white,
                        )),
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
                    Icons.description,
                    size: 37,
                  ),
                  title: const Text(
                    'Descrição:',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    developer.descrition ?? 'Indisponivel',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    if (developer.email != null) {
                      launchUrl(
                        Uri.parse(
                          'mailto:${developer.email}',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
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
                  onTap: () {
                    if (developer.github != null) {
                      launchUrl(
                        Uri.parse(
                          developer.github!,
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
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
                  onTap: () {
                    if (developer.linkedin != null) {
                      launchUrl(
                        Uri.parse(
                          developer.linkedin!,
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
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
                  onTap: () {
                    if (developer.instagram != null) {
                      String adulteracao = developer.instagram!.replaceFirst('@', '');
                      launchUrl(
                        Uri.parse(
                          'https://www.instagram.com/${adulteracao}',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
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
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/wave_red.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
