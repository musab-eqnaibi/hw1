import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String label;
  final String sub;
  final IconData icon;
  final Color color;

  Cards({required this.label, required this.sub, required this.icon,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 225, 222, 222)),
      child: ListTile(
        leading: Icon(
          icon,
          color: color,
        ),
        title: Text(
          label,
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.black),
        ),
        trailing: Icon(Icons.arrow_right_alt_rounded),
        subtitle: Text(
          sub,
          style: TextStyle(color: Colors.grey),
        ),
        selected: true,
      ),
    );
  }
}
