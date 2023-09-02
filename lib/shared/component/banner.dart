import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

class Banner extends StatelessWidget {
  const Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        'tsincoco',
        style: TextStyle(
          fontSize: 20,
          color: Palette.kToBlue,
        ),
      )
    );
  }
}
