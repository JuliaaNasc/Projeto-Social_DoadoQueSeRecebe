import 'package:flutter/material.dart';

class PhotosGallery extends StatelessWidget {
  PhotosGallery({
    required this.imagem,
    super.key,
  });

  String imagem;

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
      body: Column(
        children: [
          Expanded(child: SizedBox()),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagem,
              width: 370,
            ),
          ),
          Expanded(child: SizedBox()),
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
    );
  }
}
