import 'package:demo_test/app/modules/second/views/second2_view.dart';
import 'package:demo_test/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wave_transition/wave_transition.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint("--------------------------------------------------------");
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Get.toNamed(Routes.SECOND);
            },
            child: const Center(
              child: Text("Click"),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  WaveTransition(
                      child: Second2View(),
                      center: FractionalOffset(0.90, 0.90),
                      duration: Duration(milliseconds: 3000) // optional
              )
              );
            },
            child: const Center(
              child: Text("Click2"),
            ),
          ),
        ],
      ),
    );
  }
}
