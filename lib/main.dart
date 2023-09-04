import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_vpn/widget/bottam_nav/bottam_navbar.dart';




void main() {
  runApp( const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'User List Demo',
    home: BottomNavBar(),
  ));
}