import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mac/providers/datetime_provider.dart';
import 'package:provider/provider.dart';

import '../custom_widgets/custom_text.dart';
import '../providers/fullscreen_provider.dart';

class BarraMenu extends StatelessWidget {
  const BarraMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DateTime agora = Provider.of<DateTimeProvider>(context).currentDateTime;
    String horaPersonalizada = DateFormat.jm().format(agora);
    String dataPersonalizada = DateFormat(
      'dd/MM',
    ).format(agora);

    return Container(
      height: 30,
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(color: Color.fromARGB(41, 0, 0, 0))],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 10),
          const Icon(Icons.apple, color: Colors.white, size: 25),
          const SizedBox(width: 20),
          const CustomText(text: 'Finder', weight: FontWeight.bold, size: 15),
          const SizedBox(width: 15),
          const CustomText(text: 'Arquivo', size: 14),
          const SizedBox(width: 15),
          const CustomText(text: 'Editar'),
          const SizedBox(width: 15),
          const CustomText(text: 'Visualizar'),
          const SizedBox(width: 15),
          const CustomText(text: 'Ir'),
          const SizedBox(width: 15),
          const CustomText(text: 'Janela'),
          Consumer<FullScreenProvider>(
            builder: (context, fullScreenProvider, child) {
              return TextButton(
                onPressed: () => fullScreenProvider.setFullScreen(!fullScreenProvider.isFullScreen),
                child: const CustomText(text: 'Ajuda'),
              );
            },
          ),
          const Expanded(child: SizedBox()),
          const RotatedBox(
            quarterTurns: 1,
            child: Icon(Icons.battery_full, color: Colors.white, size: 18),
          ),
          const SizedBox(width: 15),
          const Icon(Icons.wifi_rounded, color: Colors.white, size: 18),
          const SizedBox(width: 15),
          const Icon(Icons.search, color: Colors.white, size: 18),
          const SizedBox(width: 15),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: SizedBox()),
              Flexible(
                child: Icon(
                  Icons.toggle_off_outlined,
                  color: Colors.white,
                  size: 12,
                ),
              ),
              Flexible(
                child: Icon(
                  Icons.toggle_on_sharp,
                  color: Colors.white,
                  size: 14,
                ),
              ),
              Expanded(
                  child: SizedBox(
                height: 5,
              )),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          CustomText(
            text: dataPersonalizada,
            size: 12,
          ),
          const SizedBox(
            width: 5,
          ),
          CustomText(
            text: horaPersonalizada,
            size: 12,
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}
