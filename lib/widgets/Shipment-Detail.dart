import 'package:flutter/material.dart';
import 'package:rastreo/map.dart';
import 'package:rastreo/widgets/Shipment-Info.dart';

class ShipmentDetail extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: Map())),
            Positioned(
                bottom: 0,
                height: MediaQuery.of(context).size.height * 0.42,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      // gradient: LinearGradient(
                      //   colors: [
                      //     const Color(0xFFFFFFEE),
                      //     const Color.fromRGBO(213, 216, 222, 1)
                      //   ], // whitish to gray
                      //   tileMode: TileMode
                      //       .repeated, // repeats the gradient over the canvas
                      // ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  child: ShipmentInfo(),
                ))
          ],
        ));
  }
}
