import 'package:flutter/material.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

import 'expense_category.dart';
import '../date_data.dart';

class CarAndVehicle extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/car.png"),
    color: Colors.blue[800],
  );
  @override
  Color? color = Colors.blue[800];
  @override
  String title = "Car and vehicle";
  CarAndVehicle(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
