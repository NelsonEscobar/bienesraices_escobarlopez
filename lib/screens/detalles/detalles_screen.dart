import 'package:bienesraices_escobarlopez/model/casa.dart';
import 'package:bienesraices_escobarlopez/screens/detalles/componentes/appbar_personalizada.dart';
import 'package:bienesraices_escobarlopez/screens/detalles/componentes/carousel_imagenes.dart';
import 'package:bienesraices_escobarlopez/screens/detalles/componentes/casa_detalles.dart';
import 'package:bienesraices_escobarlopez/screens/detalles/componentes/fondos_botones.dart';
import 'package:flutter/material.dart';


class DetallesScreen extends StatefulWidget {

  final Casa casa;

  const DetallesScreen({Key key,this.casa}) : super(key: key);

  @override
  _DetallesScreenState createState() => _DetallesScreenState();
}

class _DetallesScreenState extends State<DetallesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  CarouselImagenes(widget.casa.carrucelImagenesUrl),
                  AppBarPersonalizada()
                ],
              ),
              CasaDetalles(widget.casa),
            ],
          ),
          FondoBotones(),
        ],
      ),
    );
  }
}
