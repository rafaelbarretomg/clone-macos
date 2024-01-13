import 'package:flutter/material.dart';
import 'package:mac/custom_widgets/botoes_barra_titulo_atalhos.dart';

class MyTitleBar extends StatelessWidget {
  const MyTitleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 8,
        ),
        MyRoundButton(
          icon: Icons.close,
          color: Colors.red,
        ),
        SizedBox(
          width: 8,
        ),
        MyRoundButton(
          icon: Icons.horizontal_rule,
          color: Color(0xFFFEBD2D),
        ),
        SizedBox(
          width: 8,
        ),
        MyRoundButton(
          icon: Icons.open_in_full,
          color: Color(0xFFFEBD2D),
          size: 8,
        ),
        SizedBox(
          width: 30,
        ),
        Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF757575),
          size: 20,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Color.fromARGB(107, 117, 117, 117),
          size: 20,
        ),
        SizedBox(
          width: 470,
        ),
        Icon(
          Icons.grid_view,
          color: Color(0xFF757575),
          size: 20,
        ),
        Icon(
          Icons.unfold_more_sharp,
          color: Color(0xFF757575),
          size: 20,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.grid_on_rounded,
          color: Color(0xFF757575),
          size: 20,
        ),
        Icon(
          Icons.keyboard_arrow_down,
          size: 15,
          color: Color(0xFF757575),
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.more_horiz_rounded,
          color: Color(0xFF757575),
          size: 20,
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: Color(0xFF757575),
          size: 20,
        ),
        SizedBox(
          width: 40,
        ),
        Icon(
          Icons.label_outlined,
          color: Color.fromARGB(107, 117, 117, 117),
          size: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.ios_share,
          textDirection: TextDirection.rtl,
          color: Color.fromARGB(107, 117, 117, 117),
          size: 20,
        ),
        SizedBox(
          width: 40,
        ),
        Icon(
          Icons.keyboard_double_arrow_right,
          color: Color(0xFF757575),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.search,
          color: Color(0xFF757575),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
