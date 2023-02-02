import 'package:flutter/material.dart';


class MoneyCard extends StatelessWidget {
  final Color color;
  final Widget childCard;
  const MoneyCard({
    Key? key, required this.color, required this.childCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
