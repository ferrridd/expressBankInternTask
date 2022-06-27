import 'package:flutter/material.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

import 'expense_category.dart';
import '../date_data.dart';

class Transport extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/transport.png"),
    color: Colors.red[900],
  );
  @override
  Color? color = Colors.red[900];
  @override
  String title = "Transport";
  Transport(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
