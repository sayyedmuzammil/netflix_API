
import 'package:flutter/material.dart';

import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/button_icon_bottom.dart';

class EveryOnesWatchingList extends StatefulWidget {
  final int index;
 final List movieList;
   const EveryOnesWatchingList({
    Key? key,
    required this.index,
    required this.movieList,
  }) : super(key: key);

  @override
  State<EveryOnesWatchingList> createState() => _EveryOnesWatchingListState();
}

class _EveryOnesWatchingListState extends State<EveryOnesWatchingList> {
  @override
  Widget build(BuildContext context) {
    String uri = widget.movieList[widget.index]['poster_path'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        child: SizedBox(
          width: 325,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          NetworkImage('http://image.tmdb.org/t/p/w500' + uri),
                    )),
                  ),
                  const Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Icon(
                      Icons.play_circle_outline,
                      size: 50,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 157,
                          child: Text(
                            widget.movieList[widget.index]['original_title'],
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const IconTextBottom(
                            icon: Icons.share_sharp, iconText: "Share"),
                        const IconTextBottom(
                            icon: Icons.add, iconText: "My List"),
                        const IconTextBottom(
                            icon: Icons.play_arrow_sharp, iconText: "Play"),
                      ],
                    ),
                    kHeight,
                    Text(
                      widget.movieList[widget.index]['overview'],
                      style: const TextStyle(color: kGreyColor),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}