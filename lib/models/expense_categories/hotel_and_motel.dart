import 'package:flutter/material.dart';

import 'expense_category.dart';
import '../date_data.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

class HotelAndMotel extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/hotel.png"),
    color: Colors.blue[800],
  );
  @override
  Color? color = Colors.blue[800];
  @override
  String title = "Hotel and Motel";
  HotelAndMotel(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
