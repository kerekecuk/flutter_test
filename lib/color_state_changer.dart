import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class ColorStateChanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("asdasd"),
      ),
      body: Center(
        child: YellowBird(),
      ),
    );
  }
}

class YellowBird extends StatefulWidget {
  const YellowBird({Key key}) : super(key: key);

  @override
  _YellowBirdState createState() => _YellowBirdState();
}

class _YellowBirdState extends State<YellowBird> {
  RandomColor _randomColor = RandomColor();
  Color _color = new Color(0xDDDFFFF00);

  void _changeColor() {
    setState(() {
      _color = _randomColor.randomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(child: Container(color: _color)),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColor,
        child: Icon(Icons.favorite),
        backgroundColor: Colors.green,
      ),
    );
  }
}
