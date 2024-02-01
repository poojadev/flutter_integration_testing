import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/aop_colors.dart';




class AppBackground extends StatefulWidget {
   const AppBackground({Key? key, required this.widget}) : super(key: key);
final  Widget widget;

  @override
  State<AppBackground> createState() => _AppBackgroundState();
}

class _AppBackgroundState extends State<AppBackground> {
  @override
  Widget build(BuildContext context) {
    return   Container(
        height: MediaQuery.of(context).size.height+1,
        width: double.infinity,
        decoration: BoxDecoration(
       color: backgroundColor,
        ),
    child: widget.widget,

    );
  }
}
