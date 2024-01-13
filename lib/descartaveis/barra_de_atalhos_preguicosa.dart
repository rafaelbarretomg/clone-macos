import 'package:flutter/material.dart';

class BarraDeAtalhosPreguicosa extends StatelessWidget {
  const BarraDeAtalhosPreguicosa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: const Border(
          left: BorderSide(
            color: Colors.green,
            width: 3,
          ),
          right: BorderSide(
            color: Colors.green,
            width: 3,
          ),
        ),
        image: const DecorationImage(
          image: AssetImage('assets/images/bottombarmac.png'),
        ),
      ),
      child: const Expanded(child: SizedBox()),
    );
  }
}
