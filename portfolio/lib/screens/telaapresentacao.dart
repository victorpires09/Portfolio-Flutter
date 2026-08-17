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
      body: Column(
        spacing: 30,
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/victor.png"),
            ),
          ),
          Text("Victor Pires"),

          Row(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () => meuGithub('https://github.com/victorpires09'), icon: FaIcon(FontAwesomeIcons.github)),
              IconButton(onPressed: () => meuGithub('https://www.instagram.com/victor_henrique_06/'), icon: FaIcon(FontAwesomeIcons.instagram)),
              IconButton(onPressed: () => meuGithub('https://www.linkedin.com/in/victorhenriquemarcellinopires/'), icon: FaIcon(FontAwesomeIcons.linkedinIn)),
            ],
          )
          
        ]
        
      ),
    );
  }
}