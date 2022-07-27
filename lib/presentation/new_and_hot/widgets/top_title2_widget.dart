import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';

class TopTitle2Switch extends StatelessWidget {
  const TopTitle2Switch({
    Key? key,
    required this.keyCheck1,
  }) : super(key: key);

  final bool keyCheck1;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 10,
        ),
        child: keyCheck1 == true
            ? Row(
                children: const [
                  kWidth,
                  Text(
                    '🍿',
                    style: TextStyle(fontSize: 22),
                  ),
                  kWidth,
                  Text(
                    'Coming Soon',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              )
            : Row(
                children: const [
                  kWidth,
                  Text(
                    '🔥',
                    style: TextStyle(fontSize: 22),
                  ),
                  kWidth,
                  Text(
                    'Everyone Watching',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ));
  }
}
