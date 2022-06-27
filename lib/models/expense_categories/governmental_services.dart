import 'package:flutter/material.dart';

import 'expense_category.dart';
import '../date_data.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

class GovernmentalServices extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/governmental.png"),
    color: Colors.grey[400],
  );
  @override
  Color? color = Colors.grey[400];
  @override
  String title = "Governmental Services";
  GovernmentalServices(
      DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
