
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/downloads/widgets/widgets/section_bottom.dart';
import 'package:netflix/presentation/downloads/widgets/widgets/section_centre.dart';
import 'package:netflix/presentation/downloads/widgets/widgets/section_top.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
ScreenDownloads({Key? key}) : super(key: key);

final _widgetList=[

         const _SmartDownloads(),
        const  Section1(),
         Section2(),
        const Section3(), 
        ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
            icon: Icons.search_outlined, 
          )),
      body: ListView.separated(
        // padding: EdgeInsets.all(10) ,
        itemBuilder: (ctx, index)=>_widgetList[index], separatorBuilder: (ctx, index)=>const SizedBox(height:20), itemCount: _widgetList.length),
        // children: 
      // ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(Icons.settings, color: kGreyColor),
        kWidth,
        Text(
          "Smart Downloads",
          style: TextStyle(
            color: kGreyColor,
          ),
        ),
        Spacer(),
        Icon(
          Icons.edit_outlined,
          color: kWhiteColor,
        ),
        kWidth,
      ],
    );
  }
}



