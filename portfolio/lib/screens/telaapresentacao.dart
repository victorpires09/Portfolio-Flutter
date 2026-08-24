import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TelaApresentacao extends StatelessWidget {
  const TelaApresentacao({super.key});

  Future<void> meuGithub(String site) async {
    final Uri url = Uri.parse(site);
    if (!await launchUrl(url)) {
      throw 'Não foi possível acessar a $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/victor.png'),
              ),

              Column(
                spacing: 6,
                children: [
                  Text(
                    'Olá, eu sou',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Victor Pires',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Text(
                'Gosto de transformar ideias em aplicações simples, '
                'úteis e fáceis de usar. Atualmente, estudo desenvolvimento '
                'de software e crio projetos para aprimorar minhas habilidades.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  height: 1.6,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),

              Column(
                spacing: 12,
                children: [
                  Text(
                    'Tecnologias e ferramentas',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Chip(
                        avatar: FaIcon(
                          FontAwesomeIcons.flutter,
                          size: 16,
                        ),
                        label: Text('Flutter'),
                      ),
                      Chip(
                        avatar: FaIcon(
                          FontAwesomeIcons.github,
                          size: 16,
                        ),
                        label: Text('Git e GitHub'),
                      ),
                      Chip(
                        avatar: FaIcon(
                          FontAwesomeIcons.java,
                          size: 16,
                        ),
                        label: Text('Java'),
                      ),
                      Chip(
                        avatar: FaIcon(
                          FontAwesomeIcons.python,
                          size: 16,
                        ),
                        label: Text('Python'),
                      ),
                    ],
                  ),
                ],
              ),

              Column(
                spacing: 8,
                children: [
                  Text(
                    'Vamos nos conectar?',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Você pode me encontrar nestas redes:',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => meuGithub(
                          'https://github.com/victorpires09',
                        ),
                        icon: const FaIcon(FontAwesomeIcons.github),
                      ),
                      IconButton(
                        onPressed: () => meuGithub(
                          'https://www.instagram.com/victor_henrique_06/',
                        ),
                        icon: const FaIcon(FontAwesomeIcons.instagram),
                      ),
                      IconButton(
                        onPressed: () => meuGithub(
                          'https://www.linkedin.com/in/'
                          'victorhenriquemarcellinopires/',
                        ),
                        icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                      ),
                    ],
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