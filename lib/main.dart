import 'package:flutter/material.dart';
import 'package:ifood_mock/components/mock_label/mock_label.dart';
import 'package:ifood_mock/components/mock_restaurant/restaurant_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iFood Mock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'iFood Mock'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Column(
            children: const [
              MockRestaurant(
                restaurantName: 'McDonald\'s',
                rating: 4.5,
                type: 'Restaurante',
                distance: 1.2,
                minimumTtd: 45,
                maximumTtd: 48,
                deliveryPrice: 11.99,
                isFavorite: false,
                imagePath: 'assets/images/mcdonalds.png',
                offerValue: 20,
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
