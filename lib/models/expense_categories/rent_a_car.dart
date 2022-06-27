import 'package:flutter/material.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

import 'expense_category.dart';
import '../date_data.dart';

class RentACar extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/rent_a_car.png"),
    color: Colors.purple[700],
  );
  @override
  Color? color = Colors.purple[700];
  @override
  String title = "Rent a Car";
  RentACar(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
