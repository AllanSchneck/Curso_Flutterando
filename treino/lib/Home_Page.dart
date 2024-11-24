import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
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
        backgroundColor: Colors.amber,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
        actions: [CustomSwitch()],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
 //         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ola Mundo',
                style: TextStyle(color: Colors.amberAccent, fontSize: 21)),
            Container(
              height: 50,
            ),
            Text("contador: $counter"),
            Container(
              height: 50,
            ),
            CustomSwitch(),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 30, height: 30, color: Colors.black),
                Container(width: 30, height: 30, color: Colors.black),
                Container(width: 30, height: 30, color: Colors.black),
              ],
            ),
            Container(height: 50,),
            CustomSwitch(),
            Container(height: 50,),
            CustomSwitch(),
            Container(height: 50,),
            CustomSwitch(),
            Container(height: 50,),
            CustomSwitch(),
          ],
        ),
      ),
      backgroundColor: Colors.white54,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          }),
    );
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
