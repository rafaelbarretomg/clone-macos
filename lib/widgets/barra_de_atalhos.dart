import 'package:flutter/material.dart';
import 'package:mac/providers/barra_de_atalhos_provider.dart';
import 'package:mac/widgets/widgets_dos_atalhos/programas.dart';
import 'package:provider/provider.dart';
import 'package:mac/providers/draggable_provider.dart';

class BarraDeAtalhos extends StatelessWidget {
  const BarraDeAtalhos({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BarraDeAtalhosProvider>(
      builder: (context, provider, child) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [BoxShadow(color: Color.fromARGB(18, 0, 0, 0))],
            ),
            child: Row(
              children: [
                Row(
                  children: List.generate(
                    provider.icones1.length,
                    (index) => iconesComHover1(
                      provider.icones1[index],
                      index,
                      provider.sideLengths1[index],
                      (value) {
                        provider.updateSideLengths1(index, value);
                      },
                      () {
                        provider.setActiveIcon(provider.icones1[index]);
                        Provider.of<DraggableDataProvider>(context,
                                listen: false)
                            .addNewDraggableData(
                              SoftwareWidget(
                            image: provider.images1[index],
                          ),
                            );
                      },
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 50,
                  decoration:
                      const BoxDecoration(color: Color.fromARGB(49, 0, 0, 0)),
                ),
                Row(
                  children: List.generate(
                    provider.icones2.length,
                    (index) => iconesComHover2(
                      provider.icones2[index],
                      index,
                      provider.sideLengths2[index],
                      (value) {
                        provider.updateSideLengths2(index, value);
                      },
                      () {
                        provider.setActiveIcon(provider.icones2[index]);
                        Provider.of<DraggableDataProvider>(context,
                                listen: false)
                            .addNewDraggableData(
                          SoftwareWidget(
                              image: provider.images2[index],
                              ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget iconesComHover1(String icone, int index, double sideLength,
      ValueChanged<bool> onHoverCallback, VoidCallback onTapCallback) {
    return AnimatedContainer(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(icone), filterQuality: FilterQuality.high)),
        height: sideLength,
        width: sideLength,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
        child: InkWell(
          onTap: onTapCallback,
          onHover: (value) {
            onHoverCallback(value);
          },
        ));
  }

  Widget iconesComHover2(String icone, int index, double sideLength,
      ValueChanged<bool> onHoverCallback, VoidCallback onTapCallback) {
    return AnimatedContainer(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(icone), filterQuality: FilterQuality.high)),
        height: sideLength,
        width: sideLength,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
        child: InkWell(
          onTap: onTapCallback,
          onHover: (value) {
            onHoverCallback(value);
          },
        ));
  }
}

