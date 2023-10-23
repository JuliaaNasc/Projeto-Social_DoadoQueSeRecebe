import 'package:flutter/material.dart';
import 'package:projeto_social/data/developers_data.dart';
import 'package:projeto_social/models/developer_model.dart';

class DeveloperScreen extends StatelessWidget {
  DeveloperScreen({
    required this.developer,
    super.key,
  });

  DeveloperModel developer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 72,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 68,
                  child: Icon(
                    Icons.person,
                    size: 75,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  size: 37,
                ),
                title: const Text(
                  'Nome:',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(developer.name,
                style: const TextStyle(
                  fontSize: 18,
                ),
                ),
              ),
                const SizedBox(height: 20),
              ListTile(
                leading: const Icon(
                  Icons.email,
                  size: 37,
                ),
                title: Text(
                  'Email:',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(developer.email??'',
                style: TextStyle(
                  fontSize: 18,
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
