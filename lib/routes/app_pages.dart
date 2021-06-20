

import 'package:get/get.dart';
import 'package:getx_fundamental/page/home/bindings/home_binding.dart';
import 'package:getx_fundamental/page/home/presentation/views/country_view.dart';
import 'package:getx_fundamental/page/home/presentation/views/details_view.dart';
import 'package:getx_fundamental/page/home/presentation/views/home_view.dart';


part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        children: [
          GetPage(
            name: Routes.COUNTRY,
            page: () => CountryView(),
            children: [
              GetPage(
                name: Routes.DETAILS,
                page: () => DetailsView(),
              ),
            ],
          ),
        ]),
  ];
}