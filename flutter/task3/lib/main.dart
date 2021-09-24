import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimationPage());
  }
}

class AnimationPage extends StatefulWidget {
  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = Tween(begin: 1.0, end: 2.0).animate(controller);
    animation.addListener(() {
      //if (controller.status == AnimationStatus.completed) controller.reverse();
      //if (controller.status == AnimationStatus.dismissed) controller.forward();
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //controller.forward();
    controller.repeat();
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Transform.scale(
              scale: animation.value,
              child: _AnimatedContainer(),
            );
          },
        ),
      ),
    );
  }
}

class _AnimatedContainer extends StatelessWidget {
  const _AnimatedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
    );
  }
}
