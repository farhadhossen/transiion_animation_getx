import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/second_controller.dart';

class SecondView extends GetView<SecondController> {
  const SecondView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondView'),
        centerTitle: true,
      ),
      body: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: Duration(milliseconds: 3000),
        builder: (context, dynamic value, child) {
          return ShaderMask(
            blendMode: BlendMode.modulate,
            shaderCallback: (rect) {
              return RadialGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                  Colors.transparent,
                  Colors.transparent
                ],
                stops: [0.0, 0.55, 0.6, 1.0],
                center: FractionalOffset(0.90, 0.90),
                radius: value * 5,
              ).createShader(rect);
            },
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index){
                return ListTile(title: Text("Farhad sdrgg af a f af as f asf a sf asf   f af a fa ef a ef "),);
              },
            ),
          );
        },
      ),

    );
  }
}
