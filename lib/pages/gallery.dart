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
                  image: 'assets/imagem_dia_das_criancas.png',
                  text: 'Dia das Crianças',
                  imagens: const [
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                  ],
                ),
                Album(
                  image: 'assets/criancas_pascoa.png',
                  text: 'Ação de páscoa',
                  imagens: const [
                    'assets/criancas_pascoa.png',
                    'assets/criancas_pascoa.png',
                    'assets/criancas_pascoa.png',
                    'assets/criancas_pascoa.png',
                    'assets/criancas_pascoa.png',
                    'assets/criancas_pascoa.png',
                    'assets/criancas_pascoa.png',
                    'assets/criancas_pascoa.png',
                    'assets/criancas_pascoa.png',
                  ],
                ),
                Album(
                  image: 'assets/imagem_de_mae.png',
                  text: 'Dia das mães',
                  imagens: const [
                    'assets/imagem_de_mae.png',
                    'assets/imagem_de_mae.png',
                    'assets/imagem_de_mae.png',
                    'assets/imagem_de_mae.png',
                    'assets/imagem_de_mae.png',
                    'assets/imagem_de_mae.png',
                    'assets/imagem_de_mae.png',
                    'assets/imagem_de_mae.png',
                    'assets/imagem_de_mae.png',
                  ],
                ),
                Album(
                  image: 'assets/imagem_doacao_alimento.png',
                  text: 'Natal',
                  imagens: const [
                    'assets/imagem_doacao_alimento.png',
                    'assets/imagem_doacao_alimento.png',
                    'assets/imagem_doacao_alimento.png',
                    'assets/imagem_doacao_alimento.png',
                    'assets/imagem_doacao_alimento.png',
                    'assets/imagem_doacao_alimento.png',
                    'assets/imagem_doacao_alimento.png',
                    'assets/imagem_doacao_alimento.png',
                    'assets/imagem_doacao_alimento.png',
                  ],
                ),
                Album(
                  image: 'assets/imagem_dia_das_criancas.png',
                  text: 'Cursos da instituição',
                  imagens: const [
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
                    'assets/imagem_dia_das_criancas.png',
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
