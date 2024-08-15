import 'package:flutter/material.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'House Tour 360',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'House Tour 360'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _panoId = 0;
  List<Image> panoImages = [
    Image.asset('assets/room.jpg'),
    Image.asset('assets/kitchen.jpg'),
  ];

  Widget hotspotButton(
      {String? text, IconData? icon, VoidCallback? onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(const CircleBorder()),
            backgroundColor: MaterialStateProperty.all(Colors.black38),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onPressed: onPressed,
          child: Icon(icon),
        ),
        text != null
            ? Container(
                padding: const EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Center(child: Text(text)),
              )
            : Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget panorama;
    switch (_panoId % panoImages.length) {
      case 0:
        panorama = PanoramaViewer(
          animSpeed: 1.0,
          sensorControl: SensorControl.orientation,
          hotspots: [
            Hotspot(
              latitude: -33.0,
              longitude: 20.0,
              width: 60.0,
              height: 60.0,
              widget: hotspotButton(
                  icon: Icons.arrow_upward,
                  onPressed: () => setState(() => _panoId++)),
            ),
            Hotspot(
              latitude: -33.0,
              longitude: 123.0,
              width: 60.0,
              height: 60.0,
              widget: hotspotButton(
                  icon: Icons.arrow_upward,
                  onPressed: () => setState(() => _panoId++)),
            ),
          ],
          child: Image.asset('assets/room.jpg'),
        );
        break;

      default:
        panorama = PanoramaViewer(
          animSpeed: 1.0,
          sensorControl: SensorControl.orientation,
          hotspots: [
            Hotspot(
              latitude: -40.0,
              longitude: 340.0,
              width: 200.0,
              height: 60.0,
              widget: hotspotButton(
                  icon: Icons.arrow_upward,
                  onPressed: () => setState(() => _panoId++)),
            ),
          ],
          child: panoImages[_panoId % panoImages.length],
        );
    }
    return Scaffold(
      body: Stack(
        children: [
          panorama,
        ],
      ),
    );
  }
}
