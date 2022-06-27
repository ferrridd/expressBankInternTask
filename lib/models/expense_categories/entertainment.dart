import 'package:flutter/material.dart';

import 'expense_category.dart';
import '../date_data.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

class Entertainment extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/clothing.png"),
    color: Colors.yellow[700],
  );
  @override
  String title = "Entertainment";
  @override
  Color? color = Colors.yellow[700];
  Entertainment(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
