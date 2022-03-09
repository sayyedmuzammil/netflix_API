import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';

class Section1 extends StatelessWidget {
  const Section1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 25,), 
        Row(
                children: [
                  kWidth,
                  const Icon(
                    Icons.file_download_sharp,
                    size: 30,
                    color: KwhiteColor,
                  ),
                  kWidth,

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      // KHeight,
                      Row(
                        children: [
                          /* Icon(
                            Icons.update,
                            color: KgreyColor[600],
                          ), */
                          Text(
                            "Smart Downloads".toUpperCase(),
                            style: TextStyle(color: KgreyColor[600]),
                          ),
                        ],
                      ),
                       const Text(
                        "Downloads for You",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // Spacer(),
                ],
              ),
      ],
    );
         
  }
}
