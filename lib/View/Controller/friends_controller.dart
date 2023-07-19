import 'package:friends/Model/response_model.dart';
import 'package:friends/Model/friend_model.dart';
import 'package:friends/Services/API/Service/api_repositories.dart';
import 'package:friends/Services/API/Service/internet.dart';
import 'package:friends/View/Components/contants.dart';
import 'package:get/get.dart';

class FriendsController extends GetxController {
  final APIRepository apiRepository = Get.find<APIRepository>();

  FriendListResponseModel friendListResponseModel = FriendListResponseModel.fromMap({});
  RxList<Friend> friendList = <Friend>[].obs;

  RxBool isLoading = false.obs;

  RxBool noInternet = false.obs;

  Friend friendDetails = Friend.fromMap({});

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    isLoading.value = true;
    await getData();
    isLoading.value = false;
  }

  Future<void> getData() async {
    if (!await Internet().isAvailable()) {
      "Internet isn't available".errorSnackBar();
    } else {
      friendListResponseModel = await apiRepository.friendListResponse();
      update();
      friendList.value = friendListResponseModel.results ?? <Friend>[];
    }
  }

  Future<void> setFriendDetails(Friend details) async {
    friendDetails = details;
    update();
  }

  Future<void> openEmailApp({required String friendEmail}) async {
    // String email = Uri.encodeComponent(friendEmail);
    // Uri mail = Uri.parse("mailto:$email");
    // if (await launchUrl(mail)) {
    // }else{
    // //email app is not opened
    // }
  }
}
