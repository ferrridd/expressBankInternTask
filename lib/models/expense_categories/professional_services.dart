import 'package:flutter/material.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

import 'expense_category.dart';
import '../date_data.dart';

class ProfessionalServices extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/professional.png"),
    color: Colors.grey[800],
  );
  @override
  Color? color = Colors.grey[800];
  @override
  String title = "Professional Services";
  ProfessionalServices(
      DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
