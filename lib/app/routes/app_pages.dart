// lib/app/routes/app_pages.dart

import 'package:get/get.dart';
import '../modules/home/views/home_view.dart';
import '../modules/event_detail/views/event_detail_view.dart';
import '../modules/agenda/views/agenda_view.dart';
import '../modules/kontak/views/kontak_view.dart';
import '../modules/tentang/views/tentang_view.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: Routes.EVENT_DETAIL,
      page: () => EventDetailView(),
    ),
    GetPage(
      name: Routes.AGENDA,
      page: () => AgendaView(),
    ),
    GetPage(
      name: Routes.KONTAK,
      page: () => KontakView(),
    ),
    GetPage(
      name: Routes.TENTANG,
      page: () => TentangView(),
    ),
  ];
}
