import 'package:flutter/material.dart';
import 'package:projeto_social/components/album.dart';
import 'package:projeto_social/pages/contribute.dart';

class Gallery extends StatelessWidget {
  Gallery({
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
            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 2,
              padding: EdgeInsets.all(16),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.75,
              children: [
                Album(
                  image: 'assets/gallery/dia_das_criancas/imagens/05.jpg',
                  text: 'Dia das Crianças',
                  imagens: const [
                    'assets/gallery/dia_das_criancas/imagens/01.jpg',
                    'assets/gallery/dia_das_criancas/imagens/02.jpg',
                    'assets/gallery/dia_das_criancas/imagens/03.jpg',
                    'assets/gallery/dia_das_criancas/imagens/04.jpg',
                    'assets/gallery/dia_das_criancas/imagens/05.jpg',
                    'assets/gallery/dia_das_criancas/imagens/06.jpg',
                    'assets/gallery/dia_das_criancas/imagens/07.jpg',
                    'assets/gallery/dia_das_criancas/imagens/08.jpg',
                    'assets/gallery/dia_das_criancas/imagens/09.png',
                    'assets/gallery/dia_das_criancas/imagens/10.png',
                  ],
                  videos: [
                    'assets/gallery/dia_das_criancas/videos/video_01.mp4',
                  ],
                ),
                Album(
                  image: 'assets/gallery/acao_de_pascoa/imagens/01.png',
                  text: 'Ação de páscoa',
                  imagens: const [
                    'assets/gallery/acao_de_pascoa/imagens/01.png',
                  ],
                  videos: [],
                ),
                Album(
                  image: 'assets/gallery/doacao/imagens/03.png',
                  text: 'Dia das mães',
                  imagens: const [
                    'assets/gallery/dia_das_maes/imagens/01.png',
                  ],
                  videos: [],
                ),
                Album(
                  image: 'assets/gallery/natal/imagens/01.png',
                  text: 'Natal',
                  imagens: const [
                    'assets/gallery/natal/imagens/01.png',
                  ],
                  videos: const [
                    'assets/gallery/natal/videos/01.mp4',
                    'assets/gallery/natal/videos/02.mp4',
                    'assets/gallery/natal/videos/03.mp4',
                    'assets/gallery/natal/videos/04.mp4',
                    'assets/gallery/natal/videos/05.mp4',
                  ],
                ),
                Album(
                  image: 'assets/gallery/dia_das_criancas/imagens/10.png',
                  text: 'Cursos da instituição',
                  imagens: const [
                    'assets/gallery/dia_das_criancas/imagens/10.png',
                    'assets/gallery/dia_das_criancas/imagens/10.png',
                    'assets/gallery/dia_das_criancas/imagens/10.png',
                    'assets/gallery/dia_das_criancas/imagens/10.png',
                    'assets/gallery/dia_das_criancas/imagens/10.png',
                  ],
                  videos: [
                    'assets/gallery/dia_das_criancas/videos/video_01.mp4',
                  ],
                ),
                Album(
                  image: 'assets/gallery/doacao/imagens/13.jpg',
                  text: 'Doações',
                  imagens: const [
                    'assets/gallery/doacao/imagens/01.png',
                    'assets/gallery/doacao/imagens/02.png',
                    'assets/gallery/doacao/imagens/03.png',
                    'assets/gallery/doacao/imagens/04.png',
                    'assets/gallery/doacao/imagens/05.png',
                    'assets/gallery/doacao/imagens/06.png',
                    'assets/gallery/doacao/imagens/07.png',
                    'assets/gallery/doacao/imagens/08.jpg',
                    'assets/gallery/doacao/imagens/09.jpg',
                    'assets/gallery/doacao/imagens/10.webp',
                    'assets/gallery/doacao/imagens/11.webp',
                    'assets/gallery/doacao/imagens/12.jpg',
                    'assets/gallery/doacao/imagens/13.jpg',
                    'assets/gallery/doacao/imagens/14.jpg',
                    'assets/gallery/doacao/imagens/15.jpg',
                    'assets/gallery/doacao/imagens/16.jpg',
                    'assets/gallery/doacao/imagens/17.png',
                    'assets/gallery/doacao/imagens/18.png',
                  ],
                  videos: const [
                    'assets/gallery/doacao/videos/video_01.mp4',
                    'assets/gallery/doacao/videos/video_02.mp4',
                    'assets/gallery/doacao/videos/video_03.mp4',
                    'assets/gallery/doacao/videos/video_04.mp4',
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
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
