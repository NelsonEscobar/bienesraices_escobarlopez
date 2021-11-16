import 'package:bienesraices_escobarlopez/screens/home/componentes/appbar_personalizada.dart';
import 'package:bienesraices_escobarlopez/screens/home/componentes/casas.dart';
import 'package:bienesraices_escobarlopez/screens/home/componentes/categorias.dart';
import 'package:bienesraices_escobarlopez/screens/home/componentes/fondos_botones.dart';
import 'package:flutter/material.dart';




class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              AppBarPersonalizada(),
              Categorias(),
              Casas()
            ],
          ),
          Botonesfondo()
        ],
      ),
    );
  }
}
