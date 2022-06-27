import 'package:flutter/material.dart';

import 'expense_category.dart';
import '../date_data.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

class MembershipOrganizations extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/membership.png"),
    color: Colors.lightGreen[400],
  );
  @override
  Color? color = Colors.lightGreen[400];
  @override
  String title = "Membership Organizations";
  MembershipOrganizations(
      DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
