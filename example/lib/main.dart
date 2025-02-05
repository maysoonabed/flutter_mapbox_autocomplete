import 'package:flutter/material.dart';
import 'tokens.dart';
import 'package:flutter_mapbox_autocomplete/flutter_mapbox_autocomplete.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MapBox AutoComplete',
      theme: ThemeData(
        primarySwatch: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _startPointController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: "اختر وجهتك",
      textController: _startPointController,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MapBoxAutoCompleteWidget(
              apiKey: Tokens.MAPBOX_ACCESS_TOKEN,
              hint: "اختر وجهتك",
              onSelect: (place) {
                _startPointController.text = place.placeName;
              },
              limit: 10,
              country: "NG",
            ),
          ),
        );
      },
      enabled: true,
    );
  }
}
