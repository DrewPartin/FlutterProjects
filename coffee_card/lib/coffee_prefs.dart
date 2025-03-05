import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {

  int strength = 0;
  int sugars = 0;
  int creamers = 0;

  void increaseStrength() {
    setState((){
      strength = strength < 5 ? strength + 1 : 0;
    });
  }

  void increaseCreamers() {
    setState((){
      creamers = creamers < 5 ? creamers + 1 : 0;
    });
  }

  void increaseSugars() {
    setState((){
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),

            if (strength == 0)
              Text('Decaf', style: TextStyle(
                color: Colors.brown[700],
                fontWeight: FontWeight.bold
              )),

            for (int i = 0; i < strength; i++)
              Image.asset('assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,           
              ),

            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: const Text('+'),
            ),
          ]
        ),

        Row(
          children: [
            const Text('Creamers: '),
            
            if (creamers == 0)
              Text('None', style: TextStyle(
                color: Colors.brown[700],
                fontWeight: FontWeight.bold
              )),

            for (int i = 0; i < creamers; i++)
              Image.asset('assets/img/creamer.png',
                width: 35,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,            
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseCreamers,
              child: const Text('+'),
            ),
          ]
        ),

        Row(
          children: [
            const Text('Sugars: '),
            
            if (sugars == 0)
              Text('None', style: TextStyle(
                color: Colors.brown[700],
                fontWeight: FontWeight.bold
              )),

            for (int i = 0; i < sugars; i++)
              Image.asset('assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,            
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseSugars,
              child: const Text('+'),
            ),
          ]
        ),
      ]
    );
  }
}