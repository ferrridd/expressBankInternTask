import 'package:flutter/material.dart';

import 'expense_category.dart';
import '../date_data.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

class ClothingStore extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/clothing.png"),
    color: Colors.red[600],
  );
  @override
  String title = "Clothing Store";
  @override
  Color? color = Colors.red[600];
  ClothingStore(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
