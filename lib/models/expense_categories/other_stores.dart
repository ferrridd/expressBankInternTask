import 'package:flutter/material.dart';

import 'expense_category.dart';
import '../date_data.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';

class OtherStores extends ExpenseCategory {
  @override
  final ImageIcon icon = ImageIcon(
    AssetImage("assets/images/store.png"),
    color: Color.fromARGB(255, 198, 134, 39),
  );
  @override
  Color? color = Color.fromARGB(255, 198, 134, 39);
  @override
  String title = "Other Stores";
  OtherStores(DateData dateData, int price, List<SingleExpense> expenses)
      : super(dateData, price, expenses);
}
