import 'package:flutter/material.dart';
import 'package:friends/Services/Routes/app_pages.dart';
import 'package:friends/Utils/design_utils.dart';
import 'package:friends/View/Components/custome_buttons.dart';
import 'package:friends/View/Components/default_circular_progress_indicator.dart';
import 'package:friends/View/Components/contants.dart';
import 'package:friends/View/Components/friends_card.dart';
import 'package:friends/View/Controller/friends_controller.dart';
import 'package:get/get.dart';

class Friends extends GetWidget<FriendsController> {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            friends,
            style: TextThemeX.text18,
          ),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return Obx(
              () => controller.isLoading.isTrue
                  ? Center(
                      child: const DefaultCircularProgressIndicator()
                          .defaultContainer(),
                    )
                  : RefreshIndicator(
                      onRefresh: () async {
                        controller.getData();
                      },
                      child: controller.friendList.isNotEmpty
                          ? GridView.builder(
                              padding: const EdgeInsets.all(defaultAllPadding),
                              shrinkWrap: true,
                              itemCount: controller.friendList.length,
                              itemBuilder: (context, index) => cardButton(
                                  buttonChild: FriendsCard(
                                    friend: controller.friendList[index],
                                  ),
                                  onTap: () {
                                    controller.setFriendDetails(
                                        controller.friendList[index]);
                                    Get.toNamed(Routes.friend);
                                  }),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:
                                    orientation == Orientation.landscape
                                        ? 3
                                        : Get.width < 420
                                            ? 2
                                            : 3,
                                mainAxisSpacing: defaultAllPadding,
                                crossAxisSpacing: defaultAllPadding,
                                childAspectRatio:
                                    orientation == Orientation.landscape
                                        ? 1.18
                                        : Get.height > 683.42
                                            ? 0.85
                                            : 0.70,
                              ),
                            )
                          : Center(
                              child: SizedBox(
                                width: 200,
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      noDataFound,
                                      style: TextThemeX.text16,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          controller.init();
                                        },
                                        child: Text(
                                          refresh,
                                          style: TextThemeX.text16,
                                        ))
                                  ],
                                ).defaultContainer(),
                              ),
                            ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
