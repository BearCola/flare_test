import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isShow = true;

  @override
  void initState() {
    removeAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Visibility(visible: isShow, child: FlareDemo()),
    );
  }

  void removeAnimation() async {
    await new Future.delayed(const Duration(seconds: 10));
    setState(() {
      isShow = false;
    });
  }
}

class FlareDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlareActor(
          "assets/success.flr",
          animation: "Untitled",
        ),
      ),
    );
  }
}
