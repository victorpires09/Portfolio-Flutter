import 'package:flutter/material.dart';

class TelaProjetos extends StatefulWidget {
  const TelaProjetos({super.key});

  @override
  State<TelaProjetos> createState() => _TelaProjetosState();
}

class _TelaProjetosState extends State<TelaProjetos> {
  final List<String> imagensProjetos = [
    'assets/projeto_smartpack.png',
    'assets/projeto_magv.png',
    'assets/projeto_airwise.png',
  ];

  int imagemAtual = 0;

  void trocarImagem() {
    setState(() {
      imagemAtual++;
      if (imagemAtual == imagensProjetos.length) {
        imagemAtual = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meus projetos')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Projeto ${imagemAtual + 1}',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 24),
              Image.asset(imagensProjetos[imagemAtual]),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: trocarImagem,
                child: const Text('Trocar imagem'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
