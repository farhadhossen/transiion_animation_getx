import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/second_controller.dart';

class Second2View extends GetView<SecondController> {
  const Second2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return ListTile(title: Text("Farhad sdrgg af a f af as f asf a sf asf   f af a fa ef a ef "),);
        },
      ),

    );
  }
}
