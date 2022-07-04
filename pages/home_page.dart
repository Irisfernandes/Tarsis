import 'package:iris09/domain/pacote_turistico.dart';
import 'package:iris09/pages/pacote_promocional.dart';
import 'package:iris09/widget/card_pacote_turistico.dart';
import 'package:flutter/cupertino.dart';
import 'package:iris09/pages/temp_page.dart';
import 'package:iris09/pages/destaques_page.dart';
import 'package:iris09/pages/grid_pacotes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List pages = const [
    DestaquesPage(),
    GridPacotesPage(),
    TemporariaPage(),
    TemporariaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Pesquisar'),
        backgroundColor: const Color(0xFF10397B),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xFFE81F7C),
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.compass),
            label: 'Destaques',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bag),
            label: 'Pacotes',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'Mais',
          ),
        ],
      ),
    );
  }
}



