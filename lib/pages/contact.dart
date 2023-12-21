import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_social/pages/contribute.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  Contact({
    required this.hasAppBar,
    super.key,
  });

  bool hasAppBar;

  @override
  Widget build(BuildContext context) {
    AppBar? appbar = null;
    if (hasAppBar) {
      appbar = AppBar(
        toolbarHeight: 110,
        centerTitle: true,
        scrolledUnderElevation: 1,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/logo.png',
          width: 200,
        ),
      );
    }
    return Scaffold(
      appBar: appbar,
      body: DefaultTabController(
          length: 4,
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'https://www.instagram.com/institutodoandoqueserecebe',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    leading: const Icon(
                      FontAwesomeIcons.instagram,
                      size: 35,
                    ),
                    trailing: Icon(Icons.open_in_new),
                    title: const Text(
                      'INSTAGRAM ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('@INSTITUTODOANDOQUESERECEBE'),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'https://api.whatsapp.com/send?phone=5585988970084 ',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    leading: const Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 35,
                    ),
                    trailing: Icon(Icons.open_in_new),
                    title: const Text(
                      'WHATSAPP ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('(85) 9 8897 0084'),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          ' ',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    leading: const Icon(
                      Icons.web,
                      size: 35,
                    ),
                    trailing: Icon(Icons.open_in_new),
                    title: const Text(
                      'SITE ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('https://instituto-doando-que-se-recebe.netlify.app/'),                  ),
                  SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'tel:85988105663',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    leading: const Icon(
                      Icons.phone_rounded,
                      size: 35,
                    ),
                    trailing: Icon(Icons.open_in_new),
                    title: const Text(
                      'TELEFONE ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('(85) 9 8897 0084'),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'mailto:institutodoandoqueserecebe@gmail.com',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    leading: const Icon(
                      Icons.email,
                      size: 35,
                    ),
                    trailing: Icon(Icons.open_in_new),
                    title: const Text(
                      'E-MAIL ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('INSTITUTODOANDOQUESERECEBE@GMAIL.COM'),
                  ),
                  ListTile(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'https://maps.google.com/?q=-3.7946149,-38.5858287',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    leading: const Icon(
                      Icons.location_pin,
                      size: 35,
                    ),
                    trailing: Icon(Icons.open_in_new),
                    title: const Text(
                      'LOCALIZAÇÃO ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('R. Einstein, 1322 - Vila Peri, Fortaleza - CE, 60730-145'),
                  ),
                  const SizedBox(height: 30),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (c) {
                            return Contribute(
                              hasAppBar: true,
                            );
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Contribua Conosco',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset('assets/wave_red.png', fit: BoxFit.fitWidth),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
