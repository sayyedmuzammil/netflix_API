import 'package:flutter/material.dart';
import 'package:netflix/core/APIFunctions/datas.dart';
import 'package:netflix/presentation/fast_laugh/widgets/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
              upcomingList.length,
          
              (index) => VideoListItem(
                    index: index,
                  )),
      ))
    );
  }
}