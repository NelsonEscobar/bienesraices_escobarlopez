import 'package:bienesraices_escobarlopez/constants/constants.dart';
import 'package:flutter/material.dart';

class AppBarPersonalizada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        top: appPadding * 2,
      ),
      child: Container(
        height: size.height * 0.22,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: black.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(Icons.sort_rounded),
                ),
                
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bienes Raices Escobar',style: TextStyle(
                  color: black.withOpacity(0.9),
                  fontSize: 30,
                ),),
                SizedBox(height: size.height * 0.01,),
                Text('El Salvador',style: TextStyle(
                  color: black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
