// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'pokeImage.dart';

class PokeCell extends StatelessWidget {
  const PokeCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
              height: 102,
              width: screenWidth - 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightGreen.shade100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "nº 0001",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontFamily: "Poppins-SemiBold",
                              color: Color.fromARGB(255, 51, 51, 51)),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Bulbasaur",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 21,
                              fontFamily: "Poppins-SemiBold",
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  PokeImage(102, 120),
                ],
              )),
        ],
      ),
    );
  }
}
