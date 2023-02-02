import 'package:flutter/material.dart';

class RoundIconButton extends StatefulWidget {
  RoundIconButton(
      {Key? key,
        required this.child,
        required this.iconColor,
        required this.parameter,
        required this.add,
        required this.onPressed})
      : super(key: key);

  final Widget child;
  final Color iconColor;
  late final int parameter;
  final bool add;
  final void Function() onPressed;

  @override
  State<RoundIconButton> createState() => _RoundIconButtonState();
}

class _RoundIconButtonState extends State<RoundIconButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: widget.onPressed,
      child: widget.child,
      elevation: 0,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: const CircleBorder(),
      fillColor: widget.iconColor,
    );
  }
}
