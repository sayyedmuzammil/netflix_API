import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier=ValueNotifier(0);
class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context, int newIndex,_){
      return BottomNavigationBar(
        iconSize: 25, 
        selectedFontSize: 8,
        unselectedFontSize: 8,     
        onTap: (index){indexChangeNotifier.value=index;},
      currentIndex: newIndex, 
       elevation: 0, 
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.grey[900], 
      selectedItemColor: Colors.white, 
       unselectedItemColor: Colors.grey, 
      selectedIconTheme: const IconThemeData(color: Colors.white),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.sports_esports_outlined,),label: 'Games'),
        BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined,),label: 'New & Hot'),
        
        BottomNavigationBarItem(icon: Icon(Icons.sentiment_satisfied_outlined,),label: 'Fast Laughs'),
        
        BottomNavigationBarItem(icon: Icon(Icons.download_for_offline_outlined, ),label: 'Downloads'),
      ],
      
    );
    }
    );
  }
}