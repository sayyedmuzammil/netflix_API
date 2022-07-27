import 'package:flutter/material.dart';
import 'package:netflix/core/APIFunctions/datas.dart';
import 'package:netflix/presentation/new_and_hot/widgets/every_ones_list.dart';


class Scroll2 extends StatelessWidget {
  const Scroll2({
    Key? key,
    required this.itemKey2,
  }) : super(key: key);

  final GlobalKey<State<StatefulWidget>> itemKey2;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        key: itemKey2,
        future: getTopRated(),
        builder: (context, snapshot1) {
          // print(snapshot1.data);
          return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (ctx, index) {

                return EveryOnesWatchingList(
                  index: index,
                  /*        date: date!, */
                  movieList: topratedList,
                );
              },
              separatorBuilder: (ctx, index) => const SizedBox(
                    height: 18,
                  ),
              itemCount: topratedList.length);
        });
  }
}
