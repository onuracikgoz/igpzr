import 'package:flutter/material.dart';
import 'package:igpzr/init/locator.dart';
import 'package:igpzr/ui/modules/home_page/home_page.dart';
import 'package:igpzr/ui/modules/init_page/init_store.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final initStore = locator<InitStore>();
    return SafeArea(
      child: Scaffold(
        body: _choosePage(),
        extendBody: true,
    
        bottomNavigationBar: ClipRRect(
 borderRadius: BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
          child: BottomNavigationBar(
              
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: 'Keşfet',
                icon: Icon(Icons.grid_view_outlined),
              ),
              BottomNavigationBarItem(label: 'Butikler', icon: Icon(Icons.shopping_bag_rounded)),
                BottomNavigationBarItem(
                label: 'Favoriler',
                icon: Icon(Icons.favorite),
              ),
            ],
            currentIndex: 0,
            onTap: (index) {
              initStore.changeCurrentIndex(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _choosePage() {
    final initStore = locator<InitStore>();
    switch (initStore.currentIndex) {
      case 0:
        return HomePage();

      default:
        return HomePage();
    }
  }
}
