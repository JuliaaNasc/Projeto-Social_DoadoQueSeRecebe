import 'package:flutter/material.dart';
import 'package:projeto_social/pages/contribute.dart';
import 'package:projeto_social/pages/photos_gallery.dart';

class AboutUs extends StatelessWidget {
  AboutUs({
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Sobre são o Instituto\nDoando Que Se Recebe?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'A instituição Doando Que Se Recebe, iniciou sua jornada em 08 de Março de 2008. Com a liderança da Cristiane Silva, mais conhecida como "Cris". Com o intuito de ajudar o próximo com esperança de um mundo melhor.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          'assets/gallery/dia_das_criancas/imagens/09.png',
                          width: 200,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (c) {
                            return PhotosGallery(
                              imagem: 'assets/gallery/dia_das_criancas/imagens/09.png',
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text(
                      'Toda essa demonstração de compaixão é feita com muito amor e carinho. E apesar das dificuldades continuam firme nessa missão.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'A missão desta instituição é inspiradora, buscando impactar positivamente a comunidade. A instituição valoriza profundamente a diversidade e a inclusão em todas as suas atividades.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'A paixão e o compromisso dos membros da equipe desta instituição são visíveis em cada aspecto do trabalho realizado.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/gallery/doacao/imagens/04.png',
                          width: 200,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'Este trabalho destaca-se pela sua sustentabilidade e pela capacidade de criar impactos positivos de longo prazo na comunidade. A instituição segue com seu excelente trabalho em prol do bem.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.asset(
                        'assets/gallery/doacao/imagens/04.png',
                        width: 200,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'Nunca subestime o poder da generosidade para transformar vidas e trazer esperança àqueles que mais precisam.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Todos nós podemos ser heróis na vida de alguém. Ofereça sua ajuda e faça a diferença!. Sua disposição para ajudar é a chave para um mundo mais solidário e empático. Junte-se a nós!.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/wave_esquerda.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/wave_direita.png',
                  ),
                ),
              ],
            ),
            const Text(
              'Responsavel pelo institudo\nDoando Que Se Recebe',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/gallery/doacao/imagens/06.png',
                      width: 150,
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'Cristiane Silva (Cris), fundadora e embaixadora do Institudo: Doando Que Se Recebe, com muito amor e carinho, levando as pessoas o significado de bondade. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Text(
                'Liderança é sobre empatia, visão e inspiração. É mostrar o potencial dentro de cada pessoa e ajudá-las a realizá-lo.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 60),
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
    );
  }
}
