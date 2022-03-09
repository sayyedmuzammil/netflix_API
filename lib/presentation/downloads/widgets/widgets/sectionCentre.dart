import 'package:flutter/material.dart';
import 'package:netflix/presentation/downloads/widgets/widgets/centreImagesWidgets.dart';

class Section2 extends StatelessWidget {
   Section2 ({ Key? key }) : super(key: key);

final List imageList=[
  "https://th.bing.com/th/id/OIP.Y0jNeVI6t0gQ2Ab-gb99mwHaKe?w=188&h=266&c=7&r=0&o=5&dpr=1.8&pid=1.7",
  "https://th.bing.com/th/id/OIP.C9QNRZMzzHUUk6wgWMoo_wHaK-?pid=ImgDet&rs=1",
  "https://th.bing.com/th/id/OIP.-v1AM7cInLFJGAZhZcmSkQHaJ4?w=188&h=251&c=7&r=0&o=5&dpr=1.8&pid=1.7",
];
  @override
  Widget build(BuildContext context) {
      final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50 ),
            width: size.width,
            height: size.height*.55 ,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(radius: size.width*.4 ,backgroundColor: Colors.grey.withOpacity(.5),),
                  DownloadsImageWidget(imageList: imageList[0], margin: const EdgeInsets.only(left: 150, bottom: 50, top: 30 ), angle: 25,size: Size(size.width*.35, size.width*.5),),
                 DownloadsImageWidget(imageList: imageList[1], margin: const EdgeInsets.only(right: 150,bottom: 50, top: 30  ), angle: -20,size: Size(size.width*.35, size.width*.5)),
                   DownloadsImageWidget(imageList: imageList[2], margin: const EdgeInsets.only( bottom: 10,top: 10, ),size: Size(size.width*.4, size.width*.55 ), radius: 8, ),
              ],
            ),
          ),

      ],
    );
  }
}
