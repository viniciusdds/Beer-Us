import 'package:beerus/app/modules/on_boarding/information/models/slide_model.dart';
import 'package:beerus/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingInformationController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);
  RxInt currentPage = 0.obs;

  List<SlideModel> list = [
    SlideModel(
        title: "Compre sua cerveja sem sair de casa",
        description: "Encontre as mais diversasa marcas de\ncervejas pilzens premium, puro malte\ne cervejas especiais",
        assetImage: "assets/images/slides/slide1.png"
    ),
    SlideModel(
        title: "Melhor Receita a Amizade",
        description: "A receita da risada e simples\ncerveja de garrafa e copos\namericanos e dois bons\namigos",
        assetImage: "assets/images/slides/slide2.png"
    ),
    SlideModel(
        title: "Aqui você compra sua cerveja gelada",
        description: "Encontre a melhor marca de cerveja\npara seu momento coloque no\ncarrinho de compras finalize o seu\npedido e aguarde ela chegar",
        assetImage: "assets/images/slides/slide3.png"
    ),
  ];

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }

  onPageChanged(int index) {
      currentPage.value = index;
  }

  void onButtonClick(){
    print(pageController.page!.toInt());
    if(pageController.page!.toInt() < 2){
      pageController.animateToPage(
          pageController.page!.toInt() + 1,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn
      );
    }else{
      Get.offNamed(Routes.HOME);
    }
  }

}