import 'package:get/get.dart';

import '../modules/offer_details_screen/bindings/offer_details_screen_binding.dart';
import '../modules/offer_details_screen/views/offer_details_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.OFFER_DETAILS_SCREEN,
      page: () => OfferDetailsScreenView(),
      binding: OfferDetailsScreenBinding(),
    ),
  ];
}
