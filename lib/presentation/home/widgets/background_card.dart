import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Stack(
          children: [
            Container(
              width: double.infinity+60,
              height: 600,
              // color: Colors.red,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover, 
                      image: NetworkImage(
                          "https://th.bing.com/th/id/OIP.LSS1bd4GK8EYCrQtMkNVhgHaKu?w=186&h=270&c=7&r=0&o=5&dpr=1.8&pid=1.7"))),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CustomButtonWidget(icon: Icons.add, title: "My List",), 
                    playButton(),
                     const CustomButtonWidget(icon: Icons.info, title: "Info",),
                  ],
                ),
              ),
            )
          ],
        );
       
  }
  
  TextButton playButton() {
    return TextButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kWhiteColor)),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 25,
                      color: backgroundColor,
                    ),
                    label:const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10),
                      child:  Text(
                        "Play",
                        style: TextStyle(
                          fontSize: 20,
                          color: backgroundColor,
                        ),
                      ),
                    ));
  }
}