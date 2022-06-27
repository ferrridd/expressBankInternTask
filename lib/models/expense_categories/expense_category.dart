import 'package:express_bank_mock/constants/image_link_consts.dart';
import 'package:express_bank_mock/models/date_data.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';
import 'package:flutter/material.dart';

abstract class ExpenseCategory {
  int price;
  DateData dateData;
  Color? color = Colors.black;
  String title = " ";
  List<SingleExpense> expenses;
  ImageIcon icon = ImageIcon(AssetImage(ImageLinkConsts.expressBankCardLink));
  ExpenseCategory(this.dateData, this.price, this.expenses);
}
