import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> rotationAnimation;
  late Animation<double> radiusAnimation;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.rotate(
                angle: rotationAnimation.value,
                child: Container(
                  height: 225,
                  width: 225,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[500],
                      borderRadius: BorderRadius.circular(radiusAnimation.value)
                  ),
                ),
              ),

              Transform.rotate(
                angle: rotationAnimation.value + 0.2,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[400],
                      borderRadius: BorderRadius.circular(radiusAnimation.value)
                  ),
                ),
              ),

              Transform.rotate(
                angle: rotationAnimation.value + 0.4,
                child: Container(
                  height: 175,
                  width: 175,
                  decoration: BoxDecoration(
                      color: Colors.purple[300],
                      borderRadius: BorderRadius.circular(radiusAnimation.value)
                  ),
                ),
              ),

              Transform.rotate(
                angle: rotationAnimation.value + 0.6,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[300],
                      borderRadius: BorderRadius.circular(radiusAnimation.value)
                  ),
                ),
              ),

              Transform.rotate(
                angle: rotationAnimation.value+0.8,
                child: Container(
                  height: 125,
                  width: 125,
                  decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.circular(radiusAnimation.value)
                  ),
                ),
              ),
              Transform.rotate(
                angle: rotationAnimation.value + 1.0,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(radiusAnimation.value)
                  ),
                ),
              ),
              Transform.rotate(
                angle: rotationAnimation.value+ 1.2,
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(radiusAnimation.value)
                  ),
                ),
              ),
              Transform.rotate(
                angle: rotationAnimation.value+ 1.4,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(radiusAnimation.value)
                  ),
                ),
              ),
              Transform.rotate(
                angle: rotationAnimation.value+ 1.6,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(radiusAnimation.value)
                  ),
                ),
              ),
            ],
          )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void initState() {
    super.initState();
    //initialize animation controller
    _controller =
    AnimationController(vsync: this, duration: const Duration(seconds: 5))
      ..forward();

    rotationAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    radiusAnimation = Tween(begin: 450.0, end: 5.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.addListener(() {
      setState(() {});
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }
}
