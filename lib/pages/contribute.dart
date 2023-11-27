// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:super_clipboard/super_clipboard.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Contribute extends StatelessWidget {
 Contribute({
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    const Text(
                      'Formas De Doação ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 150, 30, 22),
                              blurRadius: 5,
                            ),
                          ],
                          color: Colors.grey.shade100,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Pix',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Text(
                                      'Sua doação faz a diferença. Com apenas alguns reais, você pode contribuir para mudar vidas e criar um impacto duradouro.',
                                      textAlign: TextAlign.justify,
                                    ),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 237, 16, 0)),
                                        ),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (c) {
                                              return AlertDialog(
                                                title: Row(
                                                  children: [
                                                    const Expanded(
                                                      child: Text(
                                                        'Para efetuar a sua doação escolha um dos meios abaixo:',
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 125,
                                                      child: Lottie.asset(
                                                        'assets/gifs/gif_melancia.json',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                content: Padding(
                                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                  child: Wrap(
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          DataWriterItem item = DataWriterItem();

                                                          item.add(Formats.plainText('43.153.689/0001-05                                                                                                                                                                                                                                                                                                                                                                                                                              '));
                                                          await ClipboardWriter.instance.write([item]);
                                                          Navigator.of(context).pop();
                                                          showDialog(
                                                              context: context,
                                                              builder: (context) {
                                                                return AlertDialog(
                                                                  title: Row(
                                                                    children: [
                                                                      const Expanded(
                                                                        child: Text(
                                                                          'Chave pix copiada com sucesso',
                                                                          style: TextStyle(
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 20,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      IconButton(
                                                                        onPressed: () {
                                                                          Navigator.of(context).pop();
                                                                        },
                                                                        icon: const Icon(
                                                                          Icons.close,
                                                                          size: 30,
                                                                          color: Colors.red,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  content: const Text(
                                                                    '43.153.689/0001-05',
                                                                    style: TextStyle(
                                                                      fontWeight: FontWeight.bold,
                                                                      fontSize: 18,
                                                                    ),
                                                                  ),
                                                                );
                                                              });
                                                        },
                                                        child: const Text(
                                                          'Copiar chave',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 10),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.of(context).pop();
                                                          showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return AlertDialog(
                                                                title: Row(
                                                                  children: [
                                                                    const Expanded(
                                                                      child: Text(
                                                                        'Escaneie o QRcode abaixo:',
                                                                        style: TextStyle(
                                                                          fontWeight: FontWeight.bold,
                                                                          fontSize: 20,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    IconButton(
                                                                      onPressed: () {
                                                                        Navigator.of(context).pop();
                                                                      },
                                                                      icon: const Icon(
                                                                        Icons.close,
                                                                        size: 30,
                                                                        color: Colors.red,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                content: Padding(
                                                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                                  child: SizedBox(
                                                                    height: 200,
                                                                    child: Image.asset(
                                                                      'assets/qrcode-pix_instituicao.png',
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                        child: const Text(
                                                          'Gerar QRcode',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: const Text(
                                          'Doar',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 150,
                                child: Lottie.asset(
                                  'assets/gifs/gif_money.json',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 168, 30, 20),
                              blurRadius: 5,
                            ),
                          ],
                          color: Colors.grey.shade100,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Roupas',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Text(
                                      'Sua contribuição de roupas não apenas desafoga seu armário, mas também enche o coração de alguém de esperança.',
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(height: 10),
                                    SizedBox(
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 237, 16, 0)),
                                        ),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (c) {
                                              return AlertDialog(
                                                title: Row(
                                                  children: [
                                                    const Expanded(
                                                      child: Text(
                                                        'Para efetuar a sua doação escolha um dos meios abaixo:',
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 125,
                                                      child: Lottie.asset(
                                                        'assets/gifs/gif_melancia.json',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                content: Padding(
                                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                  child: Wrap(
                                                    alignment: WrapAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          launchUrl(
                                                            Uri.parse(
                                                              'https://www.instagram.com/institutodoandoqueserecebe',
                                                            ),
                                                            mode: LaunchMode.externalApplication,
                                                          );
                                                        },
                                                        child: const Text(
                                                          'Instagram',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 10),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          launchUrl(
                                                            Uri.parse(
                                                              'https://api.whatsapp.com/send?phone=5585988970084',
                                                            ),
                                                            mode: LaunchMode.externalApplication,
                                                          );
                                                        },
                                                        child: const Text(
                                                          'WhatsApp',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: const Text(
                                          'Doar',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 160,
                                child: Lottie.asset('assets/gifs/gif_clothes.json'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 168, 30, 20),
                              blurRadius: 5,
                            ),
                          ],
                          color: Colors.grey.shade100,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Alimentos',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Text(
                                      'Nada é mais gratificante do que alimentar a esperança. Doe alimentos e ilumine vidas.',
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(height: 10),
                                    SizedBox(
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 237, 16, 0)),
                                        ),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (c) {
                                              return AlertDialog(
                                                title: Row(
                                                  children: [
                                                    const Expanded(
                                                      child: Text(
                                                        'Para efetuar sua doação escolha um dos meios abaixo:',
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 125,
                                                      child: Lottie.asset(
                                                        'assets/gifs/gif_melancia.json',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                content: Padding(
                                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                  child: Wrap(
                                                    alignment: WrapAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          launchUrl(
                                                            Uri.parse(
                                                              'https://www.instagram.com/institutodoandoqueserecebe',
                                                            ),
                                                            mode: LaunchMode.externalApplication,
                                                          );
                                                        },
                                                        child: const Text(
                                                          'Instagram',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 10),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          launchUrl(
                                                            Uri.parse(
                                                              'https://api.whatsapp.com/send?phone=5585988970084',
                                                            ),
                                                            mode: LaunchMode.externalApplication,
                                                          );
                                                        },
                                                        child: const Text(
                                                          'WhatsApp',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: const Text(
                                          'Doar',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              SizedBox(
                                width: 150,
                                child: Lottie.asset(
                                  'assets/gifs/gif_food.json',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 168, 30, 20),
                              blurRadius: 5,
                            ),
                          ],
                          color: Colors.grey.shade100,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Brinquedos',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Text(
                                      'Cada brinquedo que você doa é uma oportunidade para uma criança sorrir, aprender e crescer.',
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(height: 10),
                                    SizedBox(
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 237, 16, 0)),
                                        ),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (c) {
                                              return AlertDialog(
                                                title: Row(
                                                  children: [
                                                    const Expanded(
                                                      child: Text(
                                                        'Para efetuar sua doação escolha um dos meios abaixo:',
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 125,
                                                      child: Lottie.asset(
                                                        'assets/gifs/gif_melancia.json',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                content: Padding(
                                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                  child: Wrap(
                                                    alignment: WrapAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          launchUrl(
                                                            Uri.parse(
                                                              'https://www.instagram.com/institutodoandoqueserecebe',
                                                            ),
                                                            mode: LaunchMode.externalApplication,
                                                          );
                                                        },
                                                        child: const Text(
                                                          'Instagram',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 10),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          launchUrl(
                                                            Uri.parse(
                                                              'https://api.whatsapp.com/send?phone=5585988970084',
                                                            ),
                                                            mode: LaunchMode.externalApplication,
                                                          );
                                                        },
                                                        child: const Text(
                                                          'WhatsApp',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: const Text(
                                          'Doar',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              SizedBox(
                                width: 150,
                                child: Lottie.asset(
                                  'assets/gifs/gif_toys.json',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
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
      ),
    );
  }
}
