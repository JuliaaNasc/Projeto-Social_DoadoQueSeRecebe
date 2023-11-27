import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:projeto_social/pages/photos_gallery.dart';

class GalleryPages extends StatelessWidget {
  GalleryPages({
    required this.imagens,
    required this.text,
    super.key,
  });

  List<String> imagens;
  String text;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  width: 110,
                  child: Lottie.asset(
                    'assets/gifs/bear.json',
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 3,
              padding: EdgeInsets.all(10),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 1,
              children: imagens.map(
                (imagem) {
                  return GestureDetector(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        imagem,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (c) {
                            return PhotosGallery(imagem: imagem);
                          },
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
