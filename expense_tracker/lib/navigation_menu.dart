import 'package:expense_tracker/features/shop/screens/home/home.dart';
import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        onPressed: () {},
        backgroundColor: PColors.light,
        foregroundColor: PColors.dark,
        shape: const CircleBorder(),
        child: const Icon(
          Iconsax.add,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 5.0,
        height: 96,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        child:  Obx(
          ()=> BottomNavigationBar(      
              type: BottomNavigationBarType.fixed,

              currentIndex: controller.selectedIndex.value,
              onTap: (index) {
                controller.selectedIndex.value = index;
              },
              // backgroundColor: PColors.primary,
              fixedColor: PColors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedItemColor: PColors.darkGrey,
              iconSize: 25,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(
                    Iconsax.home,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "notification",
                  icon: Icon(Iconsax.notification,),
                ),
                BottomNavigationBarItem(
                  label: "receipt",
                  icon: Icon(
                    Iconsax.receipt,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Iconsax.user,
                  ),
                  label: "profile",
                ),
              ],
            ),
        ),
        ),
    
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screens = [
  const HomeScreen(),
    Container(color: Colors.red),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
}

