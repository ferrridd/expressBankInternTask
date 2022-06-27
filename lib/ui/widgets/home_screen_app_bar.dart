import 'package:express_bank_mock/constants/color_consts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Color.fromARGB(0, 255, 193, 7),
      centerTitle: true,
      backgroundColor: ColorConsts.mainBackgroundColor,
      title: Text(
        "Stats",
        style: TextStyle(
            color: ColorConsts.mainTextColor, fontWeight: FontWeight.w700),
      ),
    );
  }
}
