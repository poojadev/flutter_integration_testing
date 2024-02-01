import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/themes/text_theme.dart';
import '../common/ui/app_background.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AppBackground(widget:
    Center(child:Text('Welcome',style: displayNormalTextBold.copyWith(fontSize: 30),)),),);
  }
}
