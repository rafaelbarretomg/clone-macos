import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/fullscreen_provider.dart';

class BotoesTestes extends StatelessWidget {
  const BotoesTestes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Consumer<FullScreenProvider>(
          builder: (context, fullScreenProvider, child) {
            return ElevatedButton(
              onPressed: () => fullScreenProvider.setFullScreen(true),
              child: const Text("Entrar em Tela Cheia"),
            );
          },
        ),
        const SizedBox(height: 10),
        Consumer<FullScreenProvider>(
            builder: (context, fullScreenProvider, child) {
          return ElevatedButton(
            onPressed: () => fullScreenProvider.setFullScreen(false),
            child: const Text("Exit FullScreen"),
          );
        }),
        const SizedBox(height: 10),
        Consumer<FullScreenProvider>(
          builder: (context, fullScreenProvider, child) {
            return ElevatedButton(
              onPressed: () => fullScreenProvider.showScreenSize(context),
              child: const Text("Show screen size"),
            );
          },
        ),
        const SizedBox(height: 10),
        if (Provider.of<FullScreenProvider>(context).screenSizeText.isNotEmpty)
          Text(Provider.of<FullScreenProvider>(context).screenSizeText),
      ]),
    );
  }
}
