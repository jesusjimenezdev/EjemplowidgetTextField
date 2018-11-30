import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyTextField()
  ));
}

class MyTextField extends StatefulWidget{

  @override
  _MyTextFieldState createState() => new _MyTextFieldState();

  }

class _MyTextFieldState extends State<MyTextField> {

  String inputValue = "";
  final TextEditingController textFieldController = new TextEditingController();

  void onSubmited(String value) {
    setState(() {
      inputValue = inputValue + "\n" + value;
      textFieldController.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Widgets"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: "Pon tu texto aqui"),
                onSubmitted: (String value) {onSubmited(value);},
                controller: textFieldController,
                //maxLines: 10,
              ),
              new Text(inputValue),
            ],
          ),
        ),
      ),
    );
  }

}

