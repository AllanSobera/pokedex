// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class PokeImage extends StatelessWidget {
  double height;
  double width;

  Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
      Colors.transparent
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ).createShader(Rect.fromLTRB(0, 0, 0, 100));

  PokeImage(this.height, this.width, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightGreen.shade700),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return linearGradient;
                  },
                  blendMode: BlendMode.dstIn,
                  child: SvgPicture.asset(
                    "images/grass.svg",
                    width: width - 5,
                    height: height - 5,
                  ),
                ),
                Image.asset("images/bulbasaur.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
