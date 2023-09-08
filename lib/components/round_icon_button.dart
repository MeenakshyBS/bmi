import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final void Function()? onPressed;
  RoundIconButton({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 9.0,
      //disabledElevation: 9.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0x40a3a8b2),
    );
  }
}
