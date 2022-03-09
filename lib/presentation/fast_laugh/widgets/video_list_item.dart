import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/widgets/stackBottom.dart';
import 'package:netflix/presentation/fast_laugh/widgets/stackTop.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({ Key? key , required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    return Stack(
      children: [
        StackBottom(index: index, size: size),
        StackTop(),
      ],
    );
  }
}
