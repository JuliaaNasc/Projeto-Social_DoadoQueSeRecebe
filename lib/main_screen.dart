import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
            const ListTile(
              title: Text(
                'Inicio',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                'Sobre',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                'Fotos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                'Contato',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              title: Text(
                'Quero Contribuir',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 110,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          width: 200,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 20,
                    ),
                  ]),
                  child: Image.asset(
                    'assets/criancas_instituto.png',
                  ),
                ),
              const Positioned.fill(top: 100,
                 child: Text(
                    'QUEM SOMOS',
                     textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
               )
              ],
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
              padding: const EdgeInsets.fromLTRB(100, 40, 100, 20),
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
                    'assets/imagem_de_mae.png',
                  ),
                ),
              ),
            ),
            const Text(
              'Doações De Alimentos',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
           const Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: Text(
                'As doações são feitas de forma simbólica por cada pessoa que se fornece a doar. Os alimentos são entregues a famílias que estão necessitadas.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 40, 100, 20),
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
                    'assets/imagem_dia_das_criancas.png',
                  ),
                ),
              ),
            ),
            const Text(
              'Dia das Crianças',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: Text(
                'O nosso dia das crianças é feito com muito amor e carinho para nossa comunidade, e com a ajuda da sua doação podemos presentear varias crianças necessitadas.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 40, 100, 20),
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
                    'assets/imagem_doacao_roupas.png',
                  ),
                ),
              ),
            ),
            const Text(
              'Doações de roupas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
           const Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: Text(
                'As doações de roupas são recebidas com muito carinho e cuidado, para as nossas crianças e adultos que necessitam de doações.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
