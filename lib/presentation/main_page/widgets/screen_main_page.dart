import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/Games/Screen_Games.dart';
import 'package:netflix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({ Key? key }) : super(key: key);
final _pages=[ScreenHome(),
ScreenGames(),
NewAndHot(),
ScreenFastLaugh(),
ScreenDownloads(), 
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body:SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,int index, _){
        return _pages[index];
        }
        ),
      ),
      bottomNavigationBar:  BottomNavigationWidget(),
    );
  }
}