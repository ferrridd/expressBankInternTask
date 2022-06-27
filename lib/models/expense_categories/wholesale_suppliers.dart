import 'package:flutter/material.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

import 'expense_category.dart';
import '../date_data.dart';

class WholesaleSuppliers extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/wholesale.png"),
    color: Color.fromARGB(255, 0, 0, 0),
  );
  @override
  Color? color = Color.fromARGB(255, 0, 0, 0);
  @override
  String title = "Wholesale Suppliers And Manufacturers";
  WholesaleSuppliers(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
