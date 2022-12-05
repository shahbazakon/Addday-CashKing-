import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_details_screen_controller.dart';

class OfferDetailsScreenView extends GetView<OfferDetailsScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OfferDetailsScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OfferDetailsScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
