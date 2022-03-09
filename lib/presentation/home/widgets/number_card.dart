import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/widgets/APIFunctions/datas.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: FutureBuilder(
          future: getTopRated(),
          builder: (context, snapshot) {
            if (snapshot.hasData)
            {
            return ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  String uri = topratedList[index]['poster_path'];
                  return Stack(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                // color: Colors.red,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'http://image.tmdb.org/t/p/w500' +
                                          uri),
                                )),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: -25,
                        left: -5,
                        child: BorderedText(
                          strokeColor: Colors.white,
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(
                                fontSize: 130, color: Colors.black, fontWeight: FontWeight.bold ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (ctx, index) => SizedBox(
                      width: 0,
                    ),
                itemCount: 10);
          }
          else return CircularProgressIndicator();
          }
        ));
  }
}
