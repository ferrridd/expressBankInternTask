import 'package:express_bank_mock/constants/color_consts.dart';
import 'package:express_bank_mock/constants/size_consts.dart';
import 'package:express_bank_mock/constants/text_consts.dart';
import 'package:express_bank_mock/models/expense_categories/expense_category.dart';
import 'package:express_bank_mock/models/providers/expense_notifier.dart';
import 'package:express_bank_mock/ui/widgets/detailed_expenses.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CategorySlidingUpPanel extends StatelessWidget {
  final ScrollController controller;
  final ExpenseCategory expense;
  const CategorySlidingUpPanel(
      {Key? key, required this.controller, required this.expense})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseNotifier>(
      builder: (BuildContext context, ExpenseNotifier expenseNotifier,
              Widget? child) =>
          ListView(
        padding: EdgeInsets.zero,
        controller: controller,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: Container(
                width: 40,
                height: 8,
                decoration: BoxDecoration(
                    color: ColorConsts.mainBackgroundColor,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      expense.title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      "Expences for " +
                          expense.dateData.month.toString() +
                          " " +
                          expense.dateData.year,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      children: [
                        Text(expense.price.toString() + " " + TextConsts.azn,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w800)),
                        SizedBox(
                          width: 17,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text(
                              (100 *
                                          expense.price /
                                          expenseNotifier.returnTotal())
                                      .toInt()
                                      .toString() +
                                  "% of all",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: ColorConsts.percentageTextColor)),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: SizeConsts.kDefaultPadding,
                right: SizeConsts.kDefaultPadding,
                bottom: SizeConsts.kDefaultPadding),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorConsts.mainBackgroundColor),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:
                        expenseNotifier.singleSelectedCategory.expenses.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: GestureDetector(
                            onTap: () {},
                            child: (DetailedExpenses(
                              expenseCategory:
                                  expenseNotifier.singleSelectedCategory,
                              singleExpense: expenseNotifier
                                  .singleSelectedCategory.expenses[index],
                            ))),
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
