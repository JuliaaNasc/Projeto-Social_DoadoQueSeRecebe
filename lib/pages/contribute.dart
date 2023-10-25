import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Contribute extends StatelessWidget {
  const Contribute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color.fromARGB(
                                                      255, 237, 16, 0)),
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
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 125,
                                                      child: Lottie.asset(
                                                        'assets/gif_melancia.json',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                content: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 10, 0, 10),
                                                  child: Wrap(
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'Copiar chave',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 10),
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'Gerar QRcode',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                  'assets/gif_money.json',
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
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color.fromARGB(
                                                      255, 237, 16, 0)),
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
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 125,
                                                      child: Lottie.asset(
                                                        'assets/gif_melancia.json',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                content: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 10, 0, 10),
                                                  child: Wrap(
                                                    alignment:
                                                        WrapAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'Instagram',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 10),
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'WhatsApp',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                child: Lottie.asset('assets/gif_clothes.json'),
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
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color.fromARGB(
                                                      255, 237, 16, 0)),
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
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 125,
                                                      child: Lottie.asset(
                                                        'assets/gif_melancia.json',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                content: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 10, 0, 10),
                                                  child: Wrap(
                                                    alignment:
                                                        WrapAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'Instagram',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 10),
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'WhatsApp',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                  'assets/gif_food.json',
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
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color.fromARGB(
                                                      255, 237, 16, 0)),
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
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 125,
                                                      child: Lottie.asset(
                                                        'assets/gif_melancia.json',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                content: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 10, 0, 10),
                                                  child: Wrap(
                                                    alignment:
                                                        WrapAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'Instagram',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 10),
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'WhatsApp',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                  'assets/gif_toys.json',
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
              Image.asset(
                'assets/wave_red.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
