import 'package:flutter/material.dart';
import 'package:neon_academy2/widgets/spell_label_widget.dart';

class StackViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: <Widget>[
            Positioned(
              top: constraints.maxHeight * 0.1,
              left: constraints.maxWidth * 0.25,
              child: SpellLabel(spellName: 'Expelliarmus'),
            ),
            Positioned(
              top: constraints.maxHeight * 0.3,
              left: constraints.maxWidth * 0.25,
              child: SpellLabel(spellName: 'Expecto Patronum'),
            ),
            Positioned(
              top: constraints.maxHeight * 0.5,
              left: constraints.maxWidth * 0.25,
              child: SpellLabel(spellName: 'Stupefy'),
            ),
            Positioned(
              top: constraints.maxHeight * 0.7,
              left: constraints.maxWidth * 0.25,
              child: SpellLabel(spellName: 'Avada Kedavra'),
            ),
          ],
        );
      },
    );
  }
}

