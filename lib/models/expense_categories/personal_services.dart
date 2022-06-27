import 'package:flutter/material.dart';

import 'expense_category.dart';
import '../date_data.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

class PersonalServices extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/personal.png"),
    color: Colors.blue[300],
  );
  @override
  Color? color = Colors.blue[300];
  @override
  String title = "Personal Services";
  PersonalServices(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
