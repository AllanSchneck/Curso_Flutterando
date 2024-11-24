import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treino/App_Controler.dart';

class HomePage extends StatefulWidget {
  static HomePageState instance = HomePageState();
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.yellow,
        actions: [CustomSwitch()],
      ),
      body: Column(children: [
        Center(
          child: Text(
            'Allan $counter',
            style: TextStyle(color: Colors.green, fontSize: 21),
          ),
        ),
        CustomSwitch(),
      ]),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            logic(counter);
            setState(() {
              counter++;
            });
          }),
    );
  }
}

void logic(int contador) {
  if (contador % 12 == 11) {
    //quando restar 11 alteção do tema será aplicada através de um botão
    AppControler.instance.ChangeTheme();
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppControler.instance.dartTheme,
        onChanged: (value) {
          AppControler.instance.ChangeTheme();
        });
  }
}
