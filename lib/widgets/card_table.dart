import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _BlurCard(
            cardName: 'General',
            elementsColor: Colors.blue,
            cardIcon: Icons.border_all,
          ),
          _BlurCard(
            cardName: 'Transport',
            elementsColor: Colors.purple,
            cardIcon: Icons.border_all,
          )
        ]),
        TableRow(children: [
          _BlurCard(
            cardName: 'Shopping',
            elementsColor: Colors.pink,
            cardIcon: Icons.border_all,
          ),
          _BlurCard(
            cardName: 'Bills',
            elementsColor: Colors.orange,
            cardIcon: Icons.border_all,
          )
        ]),
        TableRow(children: [
          _BlurCard(
            cardName: 'Entertainment',
            elementsColor: Colors.blue,
            cardIcon: Icons.border_all,
          ),
          _BlurCard(
            cardName: 'Grocery',
            elementsColor: Colors.green,
            cardIcon: Icons.border_all,
          )
        ]),
        TableRow(children: [
          _BlurCard(
            cardName: 'Entertainment',
            elementsColor: Colors.blue,
            cardIcon: Icons.border_all,
          ),
          _BlurCard(
            cardName: 'Grocery',
            elementsColor: Colors.green,
            cardIcon: Icons.border_all,
          )
        ]),
      ],
    );
  }
}

class _BlurCard extends StatelessWidget {
  final String cardName;
  final Color elementsColor;
  final IconData cardIcon;

  const _BlurCard(
      {Key? key,
      required this.cardName,
      required this.elementsColor,
      required this.cardIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: elementsColor,
          child: Icon(
            cardIcon,
            size: 35,
            color: Colors.white,
          ),
          radius: 30,
        ),
        SizedBox(height: 20),
        Text(
          cardName,
          style: TextStyle(color: elementsColor, fontSize: 18),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(62, 66, 107, 0.7),
              ),
              child: child),
        ),
      ),
    );
  }
}
