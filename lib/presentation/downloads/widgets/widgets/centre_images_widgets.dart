import 'dart:math';
import 'package:flutter/material.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    
    required this.imageList,
    this.angle=0,
    required this.margin,
    required this.size, 
    this.radius=10,

  }) : super(key: key);


  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
      // final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle*pi/180,
      child: Container(
        margin: margin,
        width: size.width,
      height: size.height,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        image: DecorationImage(
          fit: BoxFit.cover, 
          image: NetworkImage(imageList,),),),
      ),
    );
  }
}