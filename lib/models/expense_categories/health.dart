import 'package:flutter/material.dart';

import 'expense_category.dart';
import '../date_data.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

class Health extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/health.png"),
    color: Colors.red,
  );
  @override
  Color? color = Colors.red;
  @override
  String title = "Health";
  Health(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
