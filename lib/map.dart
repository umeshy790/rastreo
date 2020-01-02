import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class Map extends StatelessWidget {
  final points = <LatLng>[
    new LatLng(28.6139, 77.2090),
    new LatLng(19.0760, 72.8777),
  ];

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(zoom: 5.0, center: new LatLng(28.6139, 77.2090)),
      layers: [
        new TileLayerOptions(
          urlTemplate: "https://api.tiles.mapbox.com/v4/"
              "{id}/{z}/{x}/{y}@2x.png?access_token=pk.eyJ1IjoidW1lc2h5NzkwIiwiYSI6ImNrNHUzYWxrejFwamUzbHAxMjIzamgyeW8ifQ.DI7OwX0tkbKRlKROPlR_EQ",
          additionalOptions: {
            'id': 'mapbox.streets',
            'accessToken':
                'pk.eyJ1IjoidW1lc2h5NzkwIiwiYSI6ImNrNHUzYWxrejFwamUzbHAxMjIzamgyeW8ifQ.DI7OwX0tkbKRlKROPlR_EQ'
          },
        ),
        new MarkerLayerOptions(
          markers: [
            new Marker(
              width: 80.0,
              height: 80.0,
              point: new LatLng(28.6139, 77.2090),
              builder: (ctx) => new Container(
                child: Icon(Icons.trip_origin),
              ),
            ),
            new Marker(
              width: 80.0,
              height: 80.0,
              point: new LatLng(19.0760, 72.8777),
              builder: (ctx) => new Container(
                child: Icon(Icons.location_city),
              ),
            )
          ],
        ),
        PolylineLayerOptions(polylines: [
          new Polyline(points: points, strokeWidth: 2.0, color: Colors.black)
        ])
      ],
    );
  }
}
