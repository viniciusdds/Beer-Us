import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class OnboardingInformationPage extends GetView<OnboardingInformationController>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('OnboardingInformationPage')),
      body: SafeArea(
        child: Text('OnboardingInformationController'),
      ),
    );

  }

}