import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const CustomButtonWidget({
    required this.icon,
    required this.title, 
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: KwhiteColor,size: 30,),
        Text(title, style: TextStyle(fontSize: 18,),), 
      ],
    );
  }
}