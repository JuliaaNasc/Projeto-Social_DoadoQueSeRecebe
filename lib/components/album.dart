import 'package:flutter/material.dart';
import 'package:projeto_social/pages/gallery_pages.dart';

class Album extends StatelessWidget {
  Album({
    super.key,
    required this.image,
    required this.text,
    required this.videos,
    required this.imagens,
  });

  String image;
  String text;
  List<String> videos;
  List<String> imagens;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (c) {
              return GalleryPages(
                imagens: imagens,
                text: text,
                videos: videos,
              );
            },
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  spreadRadius: 0.1,
                  blurRadius: 10,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 7),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
