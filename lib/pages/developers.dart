import 'package:flutter/material.dart';
import 'package:projeto_social/data/developers_data.dart';
import 'package:projeto_social/models/developer_model.dart';
import 'package:projeto_social/pages/developer_screen.dart';

class Developers extends StatelessWidget {
  Developers({
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: developers.length,
              itemBuilder: (context, index) {
                DeveloperModel developer = developers[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (c) {
                        return DeveloperScreen(developer: developer);
                      },
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                         CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 38,
                          child: CircleAvatar(
                            child: Icon(
                              Icons.person,
                              size: 45,
                              color: Colors.white70,
                            ),
                            foregroundImage: developer.photo != null
                                ? Image.asset(
                                    developer.photo!,
                                    width: 250,
                                  ).image
                                : null,
                            backgroundColor: Colors.green.shade800,
                            radius: 35,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                developer.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                developer.descrition ?? '',
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
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
