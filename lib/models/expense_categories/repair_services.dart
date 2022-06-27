import 'package:flutter/material.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

import 'expense_category.dart';
import '../date_data.dart';

class RepairServices extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/repair.png"),
    color: Colors.purple[700],
  );
  @override
  Color? color = Colors.purple[700];
  @override
  String title = "Repair Services";
  RepairServices(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
