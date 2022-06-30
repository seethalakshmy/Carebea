import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shops_controller.dart';

class ShopsView extends GetView<ShopsController> {
  const ShopsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShopsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ShopsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
