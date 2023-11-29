import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projeto_social/pages/contact.dart';
import 'package:projeto_social/pages/contribute.dart';
import 'package:projeto_social/pages/gallery.dart';

import 'about_us.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/criancas_instituto.png',
                    ),
                    const Positioned.fill(
                      top: 90,
                      child: Text(
                        'QUEM SOMOS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 140,
                      bottom: 50,
                      left: 130,
                      right: 130,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 2, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return AboutUs(
                                  hasAppBar: true,
                                );
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Saiba Mais...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/criancas_instituto.png',
                    ),
                    const Positioned.fill(
                      top: 90,
                      child: Text(
                        'GALERIA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 140,
                      bottom: 50,
                      left: 130,
                      right: 130,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 2, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return Gallery(
                                  hasAppBar: true,
                                );
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Saiba Mais...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/criancas_instituto.png',
                    ),
                    const Positioned.fill(
                      top: 90,
                      child: Text(
                        'CONTATO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 140,
                      bottom: 50,
                      left: 130,
                      right: 130,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 2, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return Contact(
                                  hasAppBar: true,
                                );
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Saiba Mais...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/criancas_instituto.png',
                    ),
                    const Positioned.fill(
                      top: 90,
                      child: Text(
                        'QUERO CONTRIBUIR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 140,
                      bottom: 50,
                      left: 130,
                      right: 130,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 2, color: Colors.white),
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
                          'Saiba Mais...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sobre o Instituto\nDoando Que Se Recebe',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 40, 75, 20),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                   'assets/gallery/doacao/03.png',
                  ),
                ),
              ),
            ),
            const Text(
              'Doações De Alimentos',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: Text(
                'As doações são feitas de forma simbólica por cada pessoa que se fornece a doar. Os alimentos são entregues a famílias que estão necessitadas.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 40, 75, 20),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/gallery/dia_das_criancas/10.png',
                  ),
                ),
              ),
            ),
            const Text(
              'Dia das Crianças',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: Text(
                'O nosso dia das crianças é feito com muito amor e carinho para nossa comunidade, e com a ajuda da sua doação podemos presentear varias crianças necessitadas.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 40, 75, 20),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                     'assets/gallery/doacao/05.png',
                  ),
                ),
              ),
            ),
            const Text(
              'Doações de roupas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: Text(
                'As doações de roupas são recebidas com muito carinho e cuidado, para as nossas crianças e adultos que necessitam de doações.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 40, 75, 20),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                  'assets/gallery/acao_de_pascoa/01.png',
                  ),
                ),
              ),
            ),
            const Text(
              'Ação de Páscoa',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: Text(
                'A ação de páscoa é feita com o intuito das crianças terem o momento de ser criança. Para a criança mais doce do mundo, eu desejo uma Páscoa repleta de amor, chocolates e coelhinhos! colabore conosco para celebrarmos uma boa páscoa.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
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
    );
  }
}
