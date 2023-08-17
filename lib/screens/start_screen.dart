import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kc_tv_app/widgets/suggestions_card.dart';

import '../model/item.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  List<Item> _itemsClassicGames = [];
  List _itemsAllStart = [];
  List _itemsPlayers = [];
  int _index = 0;

  Future<void> readGames() async {
    final String response =
        await rootBundle.loadString('assets/jsons/classic_games.json');
    final data = await json.decode(response);

    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'KC Tv',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Recomendado para ti',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SuggestionCard()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball),
              label: 'Partidos clasicos',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball),
              label: 'Jugadores',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball),
              label: 'All-Start',
              backgroundColor: Colors.red),
        ],
        backgroundColor: Colors.blue,
        onTap: null,
      ),
    );
  }
}
