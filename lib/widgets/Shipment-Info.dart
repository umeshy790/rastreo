import 'package:flutter/material.dart';

class ShipmentInfo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
      )),
      child: ListView(
        children: <Widget>[
          Container(
            child: Text(
              "1 h 20 min",
              style: TextStyle(
                fontSize: 28,
                color: Color.fromRGBO(84, 194, 138, 1),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              "Delivery time(Expected)",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(32, 33, 36, 1)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Color.fromRGBO(84, 194, 138, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(children: <Widget>[
                  Icon(Icons.trip_origin, color: Colors.white),
                  Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Text("Delhi",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)))
                ]),
                Container(
                  margin: const EdgeInsets.only(left: 11, top: 7, bottom: 7),
                  height: 100,
                  width: 2,
                  color: Colors.white,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_city,
                        color: Colors.white,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: Text("Mumbai",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
