import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({ Key? key, required this.title, required this.icon }) : super(key: key);
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      kWidth,  
      Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      const Spacer(), 
      IconButton(onPressed: (){}, icon: Icon(icon, color: Colors.white,size: 30,)),
    // SizedBox(width: 10,), 
    kWidth,
      Container(
        width: 30, 
        height: 30, 
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.blue, ), ),
      kWidth,
    ],
      
    );
  }
}