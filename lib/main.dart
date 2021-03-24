import 'package:flutter/material.dart';

void main() {
  runApp(Method46App());
}

class Method46App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: Method46(title: '4-6 Method'),
        ),
      );
  }
}

class Method46 extends StatefulWidget {
  Method46({Key key, this.title}) : super(key: key);
  final String title;

  Widget titleSection = Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("4-6 Method"),
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: IconButton(
              icon: Icon(Icons.info_outline, color: Colors.deepOrangeAccent),
              iconSize: 15,
              onPressed: (){},
          ),
        ),
      ],
    ),
  );

  Widget _buildParamItem(String label, String unit) {
      return Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Text(label),
                ),
                Text(unit),
              ],
            ),
          ],
        ),
      );
    }

    Column _buildParamsGrid() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildParamItem('Coffee', '[g]'),
              _buildParamItem('Water', '[g]'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildParamItem('Grinder', '[g]'),
              _buildParamItem('Grind size', '[g]'),
            ],
          ),
        ],
      );
    }

    @override
    _Method46State createState() => _Method46State();
}


class _Method46State extends State<Method46> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            widget.titleSection,
            widget._buildParamsGrid(),
          ],
        ),
      ),
    );
  }
}
