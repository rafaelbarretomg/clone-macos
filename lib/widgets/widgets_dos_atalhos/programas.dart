import 'package:flutter/material.dart';
import 'package:mac/custom_widgets/barra_titulo_atalhos.dart';

import 'package:mac/providers/barra_de_atalhos_provider.dart';
import 'package:provider/provider.dart';

class SoftwareWidget extends StatelessWidget {
  final String image;
  const SoftwareWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<BarraDeAtalhosProvider>(
        builder: (context, provider, child) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: const Border(
              bottom: BorderSide(
                color: Colors.black,
              ),
            )),
        height: 600,
        width: 1000,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                ),
              )),
              height: 40,
              child: const MyTitleBar(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              height: 559,
              width: 1000,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      );
    });
  }
}
