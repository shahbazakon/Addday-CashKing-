import 'package:get/get.dart';

import '../controllers/offer_details_screen_controller.dart';

class OfferDetailsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferDetailsScreenController>(
      () => OfferDetailsScreenController(),
    );
  }
}
