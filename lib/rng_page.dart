import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:rng_color/app_consts.dart';

///Main page of the app
class RngPage extends StatefulWidget {
  ///
  const RngPage({super.key});

  @override
  State<RngPage> createState() => _RngPageState();
}

class _RngPageState extends State<RngPage> {
  Color color = Color.fromRGBO(
    math.Random().nextInt(AppConsts.rgbMaxNumber),
    math.Random().nextInt(AppConsts.rgbMaxNumber),
    math.Random().nextInt(AppConsts.rgbMaxNumber),
    1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: InkWell(
        onTap: () {
          setState(() {
            color = Color.fromRGBO(
              math.Random().nextInt(AppConsts.rgbMaxNumber),
              math.Random().nextInt(AppConsts.rgbMaxNumber),
              math.Random().nextInt(AppConsts.rgbMaxNumber),
              1,
            );
          });
        },
        child: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            ),
          ),
        ),
      ),
    );
  }
}
