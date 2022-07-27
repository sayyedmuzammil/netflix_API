import 'package:flutter/material.dart';
import 'package:netflix/core/APIFunctions/datas.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_list.dart';


class Scroll1 extends StatelessWidget {
  const Scroll1({
    Key? key,
    required this.itemKey1,
  }) : super(key: key);

  final GlobalKey<State<StatefulWidget>> itemKey1;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        key: itemKey1,
        future: getUpComming(),
        builder: (context, snapshot) {
          return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                String? date = upcomingList[index]["release_date"];

                return ComingSoonList(
                  index: index,
                  date: date!,
                  movieList: upcomingList,
                );
              },
              separatorBuilder: (ctx, index) => const SizedBox(
                    height: 18,
                  ),
              itemCount: upcomingList.length);
        });
  }
}
