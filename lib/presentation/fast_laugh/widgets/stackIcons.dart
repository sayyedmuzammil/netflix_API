
import 'package:flutter/material.dart';

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget({ Key? key , required this.icon, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10, ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white,size: 30,),
          Text(title, style: const TextStyle(fontSize: 16),),
        ],
        
      ),
    );
  }
}