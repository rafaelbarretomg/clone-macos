import 'package:flutter/material.dart';
import 'package:mac/providers/datetime_provider.dart';
import 'package:mac/providers/draggable_provider.dart';
import 'package:mac/providers/fullscreen_provider.dart';
import 'package:mac/providers/barra_de_atalhos_provider.dart';
import 'package:mac/screens/desktop_screen.dart';
import 'package:mac/widgets/barra_de_atalhos.dart';
import 'package:mac/widgets/barra_menu.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<FullScreenProvider>(
        create: (_) => FullScreenProvider()..setFullScreen(false),
      ),
      ChangeNotifierProvider<DateTimeProvider>(
        create: (_) => DateTimeProvider(),
      ),
      ChangeNotifierProvider<DraggableDataProvider>(
        create: (_) => DraggableDataProvider(),
      ),
      ChangeNotifierProvider<BarraDeAtalhosProvider>(
        create: (_) => BarraDeAtalhosProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mac OS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fundo com imagem
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Conteúdo da tela
          Column(
            children: [
              const BarraMenu(),
              Expanded(
                child:
                    Container(), // Espaço vazio para ocupar o espaço restante
              ),
              const SizedBox(
                height: 90,
                child: BarraDeAtalhos(),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),

          // DraggableWidget que fica por cima
          const MyDraggableWidget(),
        ],
      ),
    );
  }
}
