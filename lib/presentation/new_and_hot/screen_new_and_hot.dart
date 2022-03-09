import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/new_and_hot/widgets/scroll1.dart';
import 'package:netflix/presentation/new_and_hot/widgets/scroll2.dart';
import 'package:netflix/presentation/new_and_hot/widgets/topTitle2Widget.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

List<String> topList = ['Coming Soon', 'Everyone Watching', 'Top 10'];

class NewAndHot extends StatefulWidget {
  const NewAndHot({Key? key}) : super(key: key);

  @override
  State<NewAndHot> createState() => _NewAndHotState();
}

class _NewAndHotState extends State<NewAndHot> {
  final itemKey1 = GlobalKey();

  final itemKey2 = GlobalKey();
  bool keyCheck1 = true;
  Future scrollToItem(itemKey) async {
    final context = itemKey.currentContext!;

    await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
  }

  bool btnColor = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'New & Hot',
            icon: Icons.notifications,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            scrollableTitleTop(),
            TopTitle2Switch(keyCheck1: keyCheck1),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Scroll1(itemKey1: itemKey1),
                  Scroll2(itemKey2: itemKey2),
                ],
              ),
            ))
          ],
        ));
  }

  Padding scrollableTitleTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
          height: 40,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor: MaterialStateProperty.all(
                            btnColor == true ? Colors.white : Colors.black)),
                    onPressed: () {
                      scrollToItem(itemKey1);
                      setState(() {
                        btnColor = true;
                        keyCheck1 = true;
                      });
                    },
                    // icon: Icon(Icons.info),
                    child: Row(
                      children: [
                        const Text(
                          '🍿',
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          'Coming Soon',
                          style: TextStyle(
                              color: btnColor == true
                                  ? Colors.black
                                  : Colors.white),
                        ),
                      ],
                    )),

                // MainTitleWithLogo(title: "Coming Soon", logo: "🍿"),
                const SizedBox(
                  width: 15,
                ),
                TextButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor: MaterialStateProperty.all(
                            btnColor == true ? Colors.black : Colors.white)),
                    onPressed: () {
                      scrollToItem(itemKey2);
                      setState(() {
                        keyCheck1 = false;
                        btnColor = false;
                      });
                    },
                    child: Row(
                      children: [
                        const Text(
                          '🔥',
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          'Everyone Watching',
                          style: TextStyle(
                              color: btnColor == true
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ],
                    )),
                const SizedBox(
                  width: 15,
                ),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Text(
                          '🔟',
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          'Top 10',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
