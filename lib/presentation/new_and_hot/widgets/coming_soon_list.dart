import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/button_icon_bottom.dart';

class ComingSoonList extends StatelessWidget {
final int index;
   final String date;
     final List movieList;
  const ComingSoonList(
      {Key? key,
      required this.index,
      required this.date,
      required this.movieList})
      : super(key: key);
 
  @override
  Widget build(BuildContext context) {
     String monthFormate='';
  String day ='';
    String uri = movieList[index]['poster_path'];
    monthFormate = (DateFormat("MMM").format(DateTime.parse(date))).toString();
    day = (DateFormat("dd").format(DateTime.parse(date))).toString();
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  monthFormate,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  day,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
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
                        image: NetworkImage(
                            'http://image.tmdb.org/t/p/w500' + uri),
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
                              movieList[index]['original_title'],
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const IconTextBottom(
                              icon: Icons.notifications_active,
                              iconText: "Remind me"),
                          const IconTextBottom(
                              icon: Icons.info_outline, iconText: "Info"),
                        ],
                      ),
                      kHeight,
                      kHeight,
                      const Text(
                        'Season',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      kHeight,
                      Text(
                        movieList[index]['overview'],
                        style: const TextStyle(color: kGreyColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
