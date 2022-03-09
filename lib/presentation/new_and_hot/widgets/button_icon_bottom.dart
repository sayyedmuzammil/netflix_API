import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';

class IconTextBottom extends StatelessWidget {
  final IconData icon;
  final String iconText;
const IconTextBottom({
    Key? key,
    required this.icon,
    required this.iconText, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 final Size size=MediaQuery.of(context).size;
    return Column(  
      children: [
        Container(
          alignment: Alignment.center,
          width: size.width*.1, 
          child:  Icon(icon, color: KwhiteColor,size: 20,)),
          KHeight, 
           Container( 
          width: size.width*.16,     
          alignment: Alignment.center,
          child: Text(iconText, style: const TextStyle(color: KgreyColor, fontSize: 10 , 
          ),
          ),
          ),
      ],
    );
  }
}