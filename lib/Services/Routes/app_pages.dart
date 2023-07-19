import 'package:friends/Services/API/Service/api_call.dart';
import 'package:friends/Services/API/Service/api_repositories.dart';
import 'package:friends/View/Controller/friends_controller.dart';
import 'package:friends/View/Screen/friend_view.dart';
import 'package:friends/View/Screen/friends_view.dart';
import 'package:friends/View/Screen/unknown_404_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static final unknownRoute = GetPage(
    name: _Paths.unknown404,
    page: () => const Unknown404Screen(),
  );
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: _Paths.friends,
      page: () => const Friends(),
      binding: BindingsBuilder(
            () => Get.lazyPut<FriendsController>(() => FriendsController()),
      ),
      children: [
        GetPage(
          name: _Paths.friend,
          page: () => const Friend(),
        ),
      ],
    ),
  ];
}

class BindingsX {
  static BindingsBuilder initialBindigs() {
    return BindingsBuilder(() {
      Get.lazyPut<APIRepository>(() => APIRepository(), fenix: true);
      Get.lazyPut<APICall>(() => APICall(), fenix: true);
    });
  }
}
