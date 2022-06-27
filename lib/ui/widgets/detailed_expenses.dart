import 'package:express_bank_mock/constants/color_consts.dart';
import 'package:express_bank_mock/constants/size_consts.dart';
import 'package:express_bank_mock/models/expense_categories/expense_category.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';
import 'package:flutter/material.dart';

class DetailedExpenses extends StatelessWidget {
  final ExpenseCategory expenseCategory;
  final SingleExpense singleExpense;
  const DetailedExpenses(
      {Key? key, required this.expenseCategory, required this.singleExpense})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Column(
        children: [
          (Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    child: expenseCategory.icon,
                    backgroundColor: expenseCategory.color!.withOpacity(0.2),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            singleExpense.title,
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            singleExpense.price.toString() + " ₼",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            singleExpense.dateData.hour + "  ",
                            style: TextStyle(
                                color: ColorConsts.percentageTextColor),
                          ),
                          Text(
                            singleExpense.dateData
                                    .changeLength(singleExpense.dateData.day) +
                                "." +
                                singleExpense.dateData.changeLength(
                                    singleExpense.dateData.monthToNumber(
                                        singleExpense.dateData.month)) +
                                "." +
                                singleExpense.dateData.year,
                            style: TextStyle(
                                color: ColorConsts.percentageTextColor),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(left: 58),
            child: Divider(
              thickness: 2,
            ),
          )
        ],
      ),
    );
  }
}
