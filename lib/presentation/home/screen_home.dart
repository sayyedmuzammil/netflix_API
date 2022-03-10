import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/APIFunctions/datas.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/home/widgets/Main_list.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/number_List.dart';

ValueNotifier<bool> scrollNotifier=ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext context, index, _){
          
          return NotificationListener<UserScrollNotification>(
          onNotification: (notification){
            final ScrollDirection direction=notification.direction;
            if(direction==ScrollDirection.reverse){
              scrollNotifier.value=false;
            }else  if(direction==ScrollDirection.forward){
              scrollNotifier.value=true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                  children: [
              Background_card(), 
              MainList(
                title: "Released in the past year",
                getList: getUpComming(),
                listName: upcomingList ,
              ),
              MainList(
                title: "Trending Now",
                   getList: getTrending(),
                listName: trendingList ,
              ),
              NumberList(),
              MainList(
                listName:popularList ,
                title: "Tense Dramas",
                getList: getPopularMovies(),
              ),
              MainList(
                getList: getNowPlaying(),
                listName: nowplayingList ,
                title: "South Indian Cinima",
              ),
                  ],
                ),
            scrollNotifier.value==true?  AnimatedContainer(
              duration:const Duration(milliseconds: 1000, ), 
                width: double.infinity, height:  80, color: Colors.black.withOpacity(.3),
                child: Column(
                  children: [
                    Row(children: [
                      Image.network("https://vignette.wikia.nocookie.net/logopedia/images/4/43/Netflix_'N'_Logo_(2016).png/revision/latest?cb=20180706154056", width: 50, height: 40,),
                    const Spacer(), 
      IconButton(onPressed: (){}, icon:const Icon(Icons.cast, color: Colors.white,size: 30,)),
    // SizedBox(width: 10,), 
    kWidth,
      Container(
        width: 30, 
        height: 30, 
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.blue, ), ),
      kWidth,
                    ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("TV Shows",style: KHomeTitleText ),
                        Text("Movies",style: KHomeTitleText ),
                        Text("Categories",style: KHomeTitleText ), 

                      ],
                    )
                  ],
                ),
              ): KHeight, 
            ],
          ),
        );
        },)
        );
  }

}


