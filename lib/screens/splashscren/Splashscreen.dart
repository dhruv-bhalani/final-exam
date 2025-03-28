import 'dart:async';

import 'package:final_exma/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        Get.offNamed(Routes.home);
      },
    );
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(
            'assets/image/1.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
