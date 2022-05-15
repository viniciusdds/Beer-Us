import 'package:beerus/app/global/components/text_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class SignInPage extends GetView<SignInController>{

    // Aula 09 1:07:24

    @override
    Widget build(BuildContext context){
        return Scaffold(
            backgroundColor: Color(0xffffb319),
            appBar: AppBar(
                title: Image.asset('assets/images/logos/logo.png', width: 131),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
            ),
            body: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: Get.width,
                height: Get.height,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "Entrar",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  letterSpacing: 1.20
                              ),
                          ),
                        ),
                        BeerUsTextInput(),
                        BeerUsTextInput(),
                    ],
                ),
            )
        );
    }
}