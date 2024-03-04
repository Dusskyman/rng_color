import 'package:flutter/material.dart';
import 'package:rng_color/rng_page.dart';

///Our materialApp with all required settings
class App extends StatelessWidget {
  ///
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RngPage(),
    );
  }
}
