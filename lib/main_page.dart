import 'package:flutter/material.dart';
import 'package:tic_tac_toe/home_page.dart';
import 'package:tic_tac_toe/playwithcomputer.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }





  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: [
          new Image(
            image: new AssetImage("assets/pic1.jpg"),
            fit:BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.lighten,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Container(
                padding: new EdgeInsets.all(20.0),
                child: RichText(
                  text: TextSpan(
                    // text: 'Welcome To Flutter ',
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(text: 'Welcome To', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 55,color: Colors.lightBlue,)),
                      TextSpan(text: ' Tic Tac Toe', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 49,color: Colors.lightBlue,)),
                      TextSpan(text: ' Game', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.lightBlue,)),
                      // TextSpan(text: ' Page'),
                    ],
                  ),
                ),

              ),
              new Container(
                padding: const EdgeInsets.all(10),
              ),
              new FlutterLogo(
                size: controller.value*200,
              ),
              new Container(
                padding: const EdgeInsets.all(20),
              ),
              new MaterialButton(
                height: 40,
                minWidth: 180,
                color: Colors.teal,
                textColor: Colors.white,
                child: new Text("Play With Friends"),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()),);
                },
                splashColor: Colors.redAccent,
              ),
              new Container(
                padding: const EdgeInsets.all(5),
              ),
              new MaterialButton(
                height: 40,
                minWidth: 180,
                color: Colors.teal,
                textColor: Colors.white,
                child: new Text("Play With Computer"),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => play_with_comp()),);
                },
                splashColor: Colors.redAccent,
              ),
            ],
          )
        ],
      ),
    );
  }
}
