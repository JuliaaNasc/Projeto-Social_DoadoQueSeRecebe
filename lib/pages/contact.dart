import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_social/pages/contribute.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 4,
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const ListTile(
                    leading: Icon(
                      FontAwesomeIcons.instagram,
                      size: 35,
                    ),
                    title: Text(
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
                  const ListTile(
                    leading: Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 35,
                    ),
                    title: Text(
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
                  const ListTile(
                    leading: Icon(
                      Icons.web,
                      size: 35,
                    ),
                    title: Text(
                      'SITE ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('. . .'),
                  ),
                  SizedBox(height: 10),
                  const ListTile(
                    leading: Icon(
                      Icons.phone_rounded,
                      size: 35,
                    ),
                    title: Text(
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
                  const ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 35,
                    ),
                    title: Text(
                      'E-MAIL ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('. . .'),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.location_pin,
                      size: 35,
                    ),
                    title: Text(
                      'LOCALIZAÇÃO ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('. . .'),
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
                            return Contribute();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Contribue Conosco',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    'assets/wave_red.png',
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
