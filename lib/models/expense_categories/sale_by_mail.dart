import 'package:flutter/material.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

import 'expense_category.dart';
import '../date_data.dart';

class SaleByMail extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/sale_by_mail.png"),
    color: Color.fromARGB(255, 150, 39, 198),
  );
  @override
  Color? color = Color.fromARGB(255, 150, 39, 198);
  @override
  String title = "Sale By Mail or Telephone";
  SaleByMail(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
