import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/home/widgets/main_title.dart';

class MainList extends StatelessWidget {
  final String title;
  final getList;
  final listName;
   MainList({
     required this.getList, 
    required this.title,
    required this.listName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title,), 
        SizedBox(
          height: 10,
        ),
        SizedBox(
            height: 200,
            child: FutureBuilder(
              future: getList,
              builder: (context, items) {
          
                if (items.hasData) {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        String uri = listName[index]['poster_path'];
                        return Container(
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            // color: Colors.red,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://image.tmdb.org/t/p/w500' + uri),
                                fit: BoxFit.cover),
                          ),
                        );
                      },
                      separatorBuilder: (ctx, index) => SizedBox(
                            width: 10, 
                          ),
                      itemCount: listName.length);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ))
      ],
    );
  }
}