import 'package:flutter/material.dart';
import 'package:projeto_social/components/album.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.75,
        children: [
          Album(
            image: 'assets/imagem_dia_das_criancas.png',
            text: 'Dia das Crianças',
          ),
          Album(
            image: 'assets/criancas_pascoa.png',
            text: 'Ação de páscoa',
          ),
          Album(
            image: 'assets/imagem_de_mae.png',
            text: 'Dia das mães',
          ),
          Album(
            image: 'assets/imagem_doacao_alimento.png',
            text: 'Natal',
          ),
          Album(
            image: 'assets/imagem_dia_das_criancas.png',
            text: 'Cursos da instituição',
          ),
          Album(
            image: 'assets/imagem_senhora.png',
            text: 'Responsaveis pela instituição',
          ),
        ],
      ),
    );
  }
}
