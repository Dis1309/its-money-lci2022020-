import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:money_money_money/constants.dart';
import 'money_card.dart';
import 'round_icon_button.dart';

class BottomCard extends StatefulWidget {
  BottomCard({
    Key? key,
    required this.para,
    required this.cardColor,
    required this.cardTitle,
    required this.iconColor,
  }) : super(key: key);

  int para;
  final Color cardColor;
  final String cardTitle;
  final Color iconColor;

  @override
  State<BottomCard> createState() => _BottomCardState();
}

class _BottomCardState extends State<BottomCard> {
  @override
  Widget build(BuildContext context) {
    return MoneyCard(
      color: widget.cardColor,
      childCard: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BorderedText(
            strokeColor: moneyColor,
            strokeWidth: 2.0,
            child: Text(
              widget.cardTitle,
              style: titleStyle,
            ),
          ),
          BorderedText(
            strokeColor: moneyColor,
            strokeWidth: 2.0,
            child: Text(
              widget.para.toString(),
              style: numStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 35,
                ),
                iconColor: widget.iconColor,
                parameter: widget.para,
                add: true,
                onPressed: () {
                  setState(() {
                    widget.para < 10 ? widget.para++ : widget.para;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              RoundIconButton(
                child: const Icon(
                  Icons.remove,
                  color: Colors.black,
                  size: 35,
                ),
                iconColor: widget.iconColor,
                parameter: widget.para,
                add: false,
                onPressed: () {
                  setState(() {
                    widget.para > 0 ? widget.para-- : widget.para;
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

