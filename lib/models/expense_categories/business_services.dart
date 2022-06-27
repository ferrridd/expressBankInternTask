import 'package:flutter/material.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

import 'expense_category.dart';
import '../date_data.dart';

class BusinessServices extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/business.png"),
    color: Colors.black,
  );
  @override
  Color? color = Colors.black;
  @override
  String title = "Business Services";
  BusinessServices(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
