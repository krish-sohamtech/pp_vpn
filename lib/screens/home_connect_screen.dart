import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeConnectScreen extends StatefulWidget {
  const HomeConnectScreen({super.key});

  @override
  State<HomeConnectScreen> createState() => _HomeConnectScreenState();
}

class _HomeConnectScreenState extends State<HomeConnectScreen> {
  @override
  Widget build(BuildContext context) {
    var height_ = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: height_ * 0.055,
        ),
        Center(
          child: Text('You are Safe',
              style: TextStyle(
                  color: Color.fromRGBO(209, 211, 213, 1), fontSize: 30)),
        ),
        SizedBox(
          height: height_ * 0.07,
        ),
        Center(
          child: Text('Connecting Time',
              style: TextStyle(
                  color: Color.fromRGBO(209, 211, 213, 1), fontSize: 25)),
        ),
        SizedBox(
          height: height_ * 0.01,
        ),
        Center(
          child: Text('00:30:26',
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1), fontSize: 56)),
        ),
        Stack(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  SvgPicture.asset('asset/svg/Vector 2.svg',
                      fit: BoxFit.contain),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  SvgPicture.asset('asset/svg/Vector_right.svg',
                      fit: BoxFit.contain),
                ],
              ),
            ),
            // Column(P
            //   children: [
            //     SizedBox(
            //       height: 90,
            //     ),
            //     Center(
            //       child: Container(
            //         height: 120,
            //         width: 180,
            //         decoration: BoxDecoration(
            //             shape: BoxShape.rectangle,
            //             gradient: LinearGradient(colors: [
            //               Color.fromRGBO(147, 163, 194, 0),
            //               Color.fromRGBO(147, 163, 194, 1),
            //               Color.fromRGBO(41, 32, 47, 0)
            //             ])),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ],
    );
  }
}
