import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/home/widgets/main_title.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';

class NumberList extends StatelessWidget {
  const NumberList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start, 
      children:  const [
        MainTitle(title: "Top 10 Tv Shows in India today" ),
       kHeight,
       
          NumberCard(),
         kHeight, 
      ],
    );
  }
}
