import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class Section3 extends StatelessWidget {
  const Section3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 98,
              ),
              child: MaterialButton(
                color: kGreyColor[900],
                onPressed: () {},
                child: const Text(
                  "Find More to Download",
                  style: TextStyle(
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ));
  }
}