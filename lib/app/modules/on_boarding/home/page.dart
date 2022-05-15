import 'package:beerus/app/global/components/button_rounded.dart';
import 'package:beerus/app/global/components/logo.dart';
import 'package:beerus/app/modules/on_boarding/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Aula 9 aos 36 Minutos

class HomePage extends GetView<HomeController>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            backgroundColor: Color(0xffffb319),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Container(
                width: double.infinity,
                height: Get.height,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BeerUsLogo(width: Get.width),
                      SizedBox(height: Get.width * 0.3),
                      BeerUsButtonRounded(
                        name: "Entrar",
                        onTap: () => controller.onClickButtonSignIn(),
                      ),
                      BeerUsButtonRounded(
                        name: "Registrar",
                        onTap: () => controller.onClickButtonSignUp(),
                      ),
                    ],
                ),
            )
        );
    }
}