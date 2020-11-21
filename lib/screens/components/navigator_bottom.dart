import 'package:flutter/material.dart';

import '../../theme.dart';

BottomNavigationBar navigationBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    items: [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: secundaryColor,
          size: 32,
        ),
        title: Text(
          'Início',
          style: TextStyle(
            color: secundaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          color: secundaryColor,
          size: 32,
        ),
        title: Text(
          'Pesquisar',
          style: TextStyle(
            color: secundaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
          color: secundaryColor,
          size: 32,
        ),
        title: Text(
          'Perfil',
          style: TextStyle(
            color: secundaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ],
  );
}
