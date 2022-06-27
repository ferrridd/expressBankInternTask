import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpenseTrackingWidget extends StatelessWidget {
  final String price;
  final String title;
  const ExpenseTrackingWidget(
      {Key? key, required this.price, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.price,
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
        ),
        Text(
          this.title,
          style: TextStyle(
              color: Color.fromARGB(255, 255, 136, 0),
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
