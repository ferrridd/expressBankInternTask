import 'package:flutter/material.dart';

import 'expense_category.dart';
import '../date_data.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

class MoneyTransfer extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/transfer.png"),
    color: Color.fromARGB(255, 219, 207, 41),
  );
  @override
  Color? color = Color.fromARGB(255, 219, 207, 41);
  @override
  String title = "Money Transfer";
  MoneyTransfer(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
