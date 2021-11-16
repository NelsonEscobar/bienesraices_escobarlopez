import 'package:bienesraices_escobarlopez/constants/constants.dart';
import 'package:bienesraices_escobarlopez/data/data.dart';
import 'package:bienesraices_escobarlopez/model/casa.dart';
import 'package:bienesraices_escobarlopez/screens/detalles/detalles_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class Casas extends StatefulWidget {
  @override
  _CasasState createState() => _CasasState();
}

class _CasasState extends State<Casas> {
  Widget _buildCasa(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Casa casa = casaLista[index];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetallesScreen(casa: casa),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: appPadding, vertical: appPadding / 2),
        child: Container(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 180,
                      width: size.width,
                      fit: BoxFit.cover,
                      image: AssetImage(casa.imagenUrl),
                    ),
                  ),
                  Positioned(
                    right: appPadding / 2,
                    top: appPadding / 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        icon: casa.esfavorito
                            ? Icon(
                                Icons.favorite_rounded,
                                color: red,
                              )
                            : Icon(
                                Icons.favorite_border_rounded,
                                color: black,
                              ),
                        onPressed: () {
                          setState(() {
                            casa.esfavorito = !casa.esfavorito;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '\$${casa.precio.toStringAsFixed(3)}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      casa.direccion,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15, color: black.withOpacity(0.4)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '${casa.dormitorios} Dormitorios / ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '${casa.banios} Baños / ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '${casa.m2} M²',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: casaLista.length,
        itemBuilder: (context, index) {
          return _buildCasa(context, index);
        },
      ),
    );
  }
}
