import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
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
    setState(() {
      strength = strength < 5 ? strength + 1 : 0;
    });
  }

  void increaseCreamers() {
    setState(() {
      creamers = creamers < 5 ? creamers + 1 : 0;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText('Strength: '),

            if (strength == 0) StyledBodyText('Decaf'),

            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseStrength,
              child: const Text('+'),
            ),
          ],
        ),

        Row(
          children: [
            const StyledBodyText('Sugars: '),

            if (sugars == 0) StyledBodyText('None'),

            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseSugars,
              child: const Text('+'),
            ),
          ],
        ),

        Row(
          children: [
            const StyledBodyText('Creamers: '),

            if (creamers == 0) StyledBodyText('None'),

            for (int i = 0; i < creamers; i++)
              Image.asset(
                'assets/img/creamer.png',
                width: 35,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseCreamers,
              child: const Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
