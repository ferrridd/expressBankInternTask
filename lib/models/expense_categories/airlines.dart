import 'package:express_bank_mock/models/expense_categories/single_expense.dart';
import 'package:flutter/material.dart';

import '../date_data.dart';
import 'expense_category.dart';

class Airlines extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/plane.png"),
    color: Colors.blue[400],
  );
  @override
  Color? color = Colors.blue[400];
  @override
  String title = "Airlines";
  Airlines(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
