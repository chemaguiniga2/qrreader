import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrreader/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: ( int i ) => uiProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text('Mapa'),
          icon: Icon( Icons.map ),
        ),
        BottomNavigationBarItem(
          title: Text('Direcciones'),
          icon: Icon( Icons.map ),
        )
      ],

    );
  }
}