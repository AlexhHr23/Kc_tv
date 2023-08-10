import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
           child: const Image(
             image: AssetImage('assets/images/Start.jpg'),
           ),
        ),
        const SizedBox(
          width: 20,
        ),
         Column(
          children: [
            SizedBox(
              width: 300,
              height: 100,
              child: Text(
                'NBA 2023',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: Text(
                'Revive los mejores momentos de la temporada 2022-2023',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: Text(
                'Duracion: 12:56',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
          ],
        )
      ],
    );
  }
}