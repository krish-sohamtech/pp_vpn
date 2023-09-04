import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pp_vpn/widget/colors/colors.dart';
import '../../screens/home_connect_screen.dart';
import 'bottam_navbar_cnt.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> pages = [
    HomeConnectScreen(),
    // NotificationPage(),
    // Categorypage(),
    // ProfilScreen(),
  ];
  final BottomNavController _controller = Get.put(BottomNavController());

  var colors = ColorsPkg();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _controller.selectedIndex.value,
            onTap: _controller.changeTabIndex,
            items: [
              _buildNavItem("asset/icons/home.svg", 0, 'Home'),
              _buildNavItem("asset/icons/earth-line.svg", 1, 'Server'),
              _buildNavItem("asset/icons/speed.svg", 2, 'Speed Test'),
              _buildNavItem("asset/icons/profile.svg", 3, 'Profile'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Obx(
                () => Center(
                  child: pages.elementAt(_controller.currentIndex.value),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      String iconPath, int index, String tabName) {
    return BottomNavigationBarItem(
      backgroundColor: ColorsPkg.bottomNavbarColor,
      icon: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
        color: _controller.selectedIndex.value == index
            ? Colors.blue // Highlighted color
            : Colors.white,
      ),
      label: "${tabName}",
    );
  }
}
