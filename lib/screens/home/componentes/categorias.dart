import 'package:bienesraices_escobarlopez/constants/constants.dart';
import 'package:bienesraices_escobarlopez/data/data.dart';
import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  int selectedCategoryIndex = 0;

  Widget _buildCategory(BuildContext context, int index) {

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: appPadding / 3),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: appPadding / 2),
          decoration: BoxDecoration(
              color: selectedCategoryIndex == index
                  ? darkBlue
                  : black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),),
          child: Center(
            child: Text(
              listacategoria[index],style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selectedCategoryIndex == index ? white : black
            ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        top: appPadding / 2,
        bottom: appPadding,
      ),
      child: Container(
        height: size.height * 0.05,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: listacategoria.length,
          itemBuilder: (context, index) {
            return _buildCategory(context, index);
          },
        ),
      ),
    );
  }
}
