
import 'package:flutter/material.dart';
import 'package:netflix/core/APIFunctions/datas.dart';

class StackBottom extends StatelessWidget {
  const StackBottom({
    Key? key,
    required this.index,
    required this.size,
  }) : super(key: key);

  final int index;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getUpComming(),
      builder: (context, snapshot) {
        // print("444 ${upcomingList.length}");
        if (snapshot.hasData) {
          String uri = upcomingList[index]['poster_path'];

          return Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('http://image.tmdb.org/t/p/w500' + uri),
            )),
          );
        } else {
          return const Center(child:  CircularProgressIndicator());
        }
      },
    );
  }
}
