import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/widgets/stack_bottom.dart';
import 'package:netflix/presentation/fast_laugh/widgets/stack_top.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({ Key? key , required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    return Stack(
      children: [
        StackBottom(index: index, size: size),
        StackTop(index: index,),
      ],
    );
  }
}
