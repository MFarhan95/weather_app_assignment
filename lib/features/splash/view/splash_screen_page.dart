import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_assignment/features/features.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const SplashScreenPage(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreenPage()),
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7NchO-HASMfa3Fd51ENa6uB_tTbjtPnnQTexpVL7Ml-Lzo_iHMNBlQzBYTN7BbM4nNWY&usqp=CAU",
            fit: BoxFit.fitWidth,
            height: MediaQuery.of(context).size.height,
          ),
        ],
      ),
    );
  }
}
