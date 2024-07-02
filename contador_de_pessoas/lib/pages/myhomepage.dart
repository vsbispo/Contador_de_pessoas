import 'package:flutter/material.dart';
import 'package:button_animations/button_animations.dart';


const String texto = 'Saiu';
const String texto2 = 'Entrou';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'GOLS',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            leading: const Icon(
              Icons.home_mini_sharp,
              color: Colors.white,
            ), //icone fixo a esquerda na appbar
            actions: const [
              Icon(
                Icons.ac_unit_rounded,
                color: Colors.white,
              )
            ] // icone a direita na appbar
            ),
        body: Container(
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                
                  image: AssetImage('assets/images/fla.jpg'),
                  fit: BoxFit.cover
                  )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const Text('Gols',
                  style: TextStyle(color: Colors.white)),
             const SizedBox(height: 10),
              Text(
                '$count',
                style: const TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedButton( width: 100, color: Colors.white, onTap: decrement, child: const Text(texto)),
                  AnimatedButton( width: 100, color: Colors.white, onTap: increment, child: const Text(texto2)),
                ],
              ),
              
            ],
          ),
        ));
  }
}
