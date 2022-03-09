
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/fast_laugh/widgets/stackIcons.dart';

class StackTop extends StatelessWidget {
  const StackTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter, 
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10, ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end, 
          children: [
            //left side
          CircleAvatar(
            radius: 30, 
            backgroundColor: Colors.black.withOpacity(.5),

            child: IconButton(onPressed: (){}, icon: const Icon(Icons.volume_off,size: 30 ,) ,)),
          
          //right side
          Column(
            mainAxisAlignment: MainAxisAlignment.end, 
            children:const [
              CircleAvatar(
                radius: 30, 
                
                backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.JxplbFtV_MGEefoicK7C5wHaHa?w=199&h=199&c=7&r=0&o=5&dpr=1.8&pid=1.7"),
              ),
              KHeight, 
              VideoActionsWidget(icon: Icons.emoji_emotions, title: 'LOL'),
               VideoActionsWidget(icon: Icons.add, title: 'My List'),
                VideoActionsWidget(icon: Icons.share, title: 'Share'),
                 VideoActionsWidget(icon: Icons.play_arrow, title: 'Play'),
              // CircleAvatar(),
            ],
          )
        ],),
      ),
    );
  }
}