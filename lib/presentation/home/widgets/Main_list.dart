import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/main_title.dart';

class MainList extends StatelessWidget {
  final String title;
  final dynamic getList;
  final List<dynamic> listName;
   const MainList({
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
        const SizedBox(
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
                      separatorBuilder: (ctx, index) => const SizedBox(
                            width: 10, 
                          ),
                      itemCount: listName.length);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ))
      ],
    );
  }
}