import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contando = 0;
  void _contarMais() {
    setState(() {
      _contando++;
    });
  }

  void _contarMenos() {
    setState(() {
      _contando--;
    });
  }

  bool get cheio => _contando == 10;
  bool get vazio => _contando == 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Contador: $_contando',
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: cheio ? null : _contarMais,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  //fixedSize: Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Entrou'),
              ),
              const SizedBox(width: 15.0),
              ElevatedButton(
                onPressed: vazio ?  null : _contarMenos,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Diminuir'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
