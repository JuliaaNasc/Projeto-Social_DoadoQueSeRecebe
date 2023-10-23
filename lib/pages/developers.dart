import 'package:flutter/material.dart';
import 'package:projeto_social/data/developers_data.dart';
import 'package:projeto_social/models/developer_model.dart';
import 'package:projeto_social/pages/developer_screen.dart';

class Developer extends StatelessWidget {
  const Developer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
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
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 38,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 45,
                      ),
                      backgroundColor: Colors.red,
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
    );
  }
}
