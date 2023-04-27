import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/constant.dart';
import '../../controller/controller.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends GetView<HomeController> {
  static const pageId = '/HomeScreen';

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> CommonLoader(
        isLoad: controller.loader.value,
        body : Scaffold(
          key: controller.scaffoldKey,
          appBar:  CommonAppBar(
            title: "Home Screen",
            leadingIcon: ImagePath.drawerIcon,
            leadingOnTap: (){
            }, ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15,),
                  Text("GIF's", style: CustomTextStyle.headingText,),
                  const SizedBox(height: 15,),
                  controller.dataList.isNotEmpty ?
                  Expanded(
                    child: GridView.builder(
                      controller: controller.scrollController,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorConfig.colorBlurRadius),
                          child:
                          SizedBox(
                            height: Get.height*0.25,width: Get.width* 0.40,
                            child:
                            CachedNetworkImage(
                               imageUrl: controller.dataList[index].media![0].gif!.url.toString(),
                              imageBuilder: (context, imageProvider) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: ColorConfig.colorBlack,
                                      width: 1),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,),
                                ),
                              ),
                              placeholder: (context, url) => Transform.scale(
                                scale: 0.5,
                                child: const CircularProgressIndicator(
                                  backgroundColor: ColorConfig.colorOrange,
                                  strokeWidth: 3,
                                ),
                              ),
                              errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red,),
                            ),
                          ),
                        );
                      },
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 18,
                      ),
                      itemCount: controller.dataList.length,
                      shrinkWrap: true,
                    ),
                  )
                  : controller.loader.value == false
                      ? const Text("No Data Found")
                      : Container(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              color: ColorConfig.colorGreen,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("@g.tenor.com", textAlign: TextAlign.center,),
            ),
          ),
        ),
      ),
    );
  }
}
