import 'package:beerus/app/global/components/button_rounded.dart';
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
                width: double.infinity,
                height: Get.height,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Text(
                            "Entrar",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                letterSpacing: 1.20
                            ),
                        ),
                        SizedBox(height: Get.width * 0.1),
                        BeerUsTextInput(
                          icon: Icon(Icons.mail),
                          text: "e-mail",
                          //controller: ,
                        ),
                        BeerUsTextInput(
                          icon: Icon(Icons.lock),
                          text: "senha",
                          onShowPassword: (){},
                        ),
                        Container(
                          width: Get.width,
                          padding: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){},
                            child: Text(
                              "esqueceu a senha?",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                letterSpacing: 0.90,
                              ),
                            ),
                          ),
                        ),
                      SizedBox(height: Get.width * 0.1),
                        BeerUsButtonRounded(
                            name: "Acessar",
                        ),
                        SizedBox(height: Get.width * 0.1),
                        Text(
                          "Não sabe o que fazer?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            letterSpacing: 0.90
                          ),
                        ),
                        SizedBox(height: 5),
                        InkWell(
                          onTap: (){},
                          child: Text(
                            "cadastre-se",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              letterSpacing: 0.90,
                            ),
                          ),
                        ),
                      SizedBox(height: Get.width * 0.1),
                        Image.asset("assets/images/icons/trigo.png"),
                      SizedBox(height: Get.width * 0.1),
                    ],
                ),
            )
        );
    }
}