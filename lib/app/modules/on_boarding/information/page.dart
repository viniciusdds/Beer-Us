import 'package:beerus/app/modules/on_boarding/information/widgets/page_view_custom.dart';
import 'package:beerus/app/modules/on_boarding/information/widgets/slide_dots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class OnboardingInformationPage extends GetView<OnboardingInformationController>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffffb319),
      appBar: AppBar(
          title: Image.asset('assets/images/logos/logo.png', width: 131),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              margin: EdgeInsets.only(bottom: 20.0),
              child: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (int i = 0; i < controller.list.length; i++)
                      if (i == controller.currentPage.value)
                        SlideDots(true)
                      else
                        SlideDots(false)
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                 scrollDirection: Axis.horizontal,
                 controller: controller.pageController,
                 onPageChanged: controller.onPageChanged,
                 itemCount: controller.list.length,
                 itemBuilder: (ctx, idx){
                   return PageViewCustom(
                     title: controller.list[idx].title,
                     description: controller.list[idx].description,
                     image: Image.asset(controller.list[idx].assetImage),
                   );
                 },
              )
            )
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: controller.onButtonClick,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 186,
              height: 36,
              margin: EdgeInsets.only(
                bottom: 22
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    blurRadius: 4,
                    offset: Offset(0, 4)
                  ),
                ],
                color: Color(0xffffb319),
              ),
              padding: EdgeInsets.only(
                top: 6,
                bottom: 7,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "PRÓXIMO >",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      letterSpacing: 0.90
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

  }

}