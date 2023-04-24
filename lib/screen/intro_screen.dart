import 'package:flutter/material.dart';
import 'package:mnml_ecommerce_application/util/colors.dart';
import 'package:mnml_ecommerce_application/widget/image_list_view.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // image transition
          Positioned(
            top: -10,
            left: -150,
            child: Row(
              children: const <Widget>[
                ImageListView(startIndex: 0),
                ImageListView(startIndex: 1),
                ImageListView(startIndex: 2),
              ],
            ),
          ),

          // title
          Positioned(
            top: MediaQuery.of(context).size.height * .8,
            child: const Text(
              'MNMLMANDI',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
