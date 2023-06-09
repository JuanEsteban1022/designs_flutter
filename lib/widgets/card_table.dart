import 'dart:ui';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        //* Los tablerow deben tener la misma cantidad de columnas
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.museum_outlined,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental_outlined,
            text: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.greenAccent,
            icon: Icons.house_outlined,
            text: 'Home',
          ),
          _SingleCard(
            color: Colors.purpleAccent,
            icon: Icons.shop_outlined,
            text: 'Shop',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.redAccent,
            icon: Icons.pets_outlined,
            text: 'Pets',
          ),
          _SingleCard(
            color: Colors.blueGrey,
            icon: Icons.food_bank_outlined,
            text: 'Food',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.tealAccent,
            icon: Icons.call_end_outlined,
            text: 'Contact',
          ),
          _SingleCard(
            color: Colors.amberAccent,
            icon: Icons.warning_amber_outlined,
            text: 'Support',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.lightBlueAccent,
            icon: Icons.info_outline,
            text: 'Info',
          ),
          _SingleCard(
            color: Colors.deepPurpleAccent,
            icon: Icons.graphic_eq_outlined,
            text: 'Indicator',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        backgroundColor: color,
        child: Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
        radius: 30,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(color: color, fontSize: 18),
      ),
    ]));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
