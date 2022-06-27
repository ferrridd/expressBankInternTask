import 'package:express_bank_mock/constants/color_consts.dart';
import 'package:express_bank_mock/constants/size_consts.dart';
import 'package:express_bank_mock/constants/text_consts.dart';
import 'package:express_bank_mock/models/providers/expense_notifier.dart';
import 'package:express_bank_mock/ui/widgets/expense_tracking_widget.dart';
import 'package:express_bank_mock/ui/widgets/expenses_categories.dart';
import 'package:express_bank_mock/ui/widgets/pie_chart_stack.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'expense_category_section.dart';

class ExpensesWidget extends StatelessWidget {
  const ExpensesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseNotifier>(
      builder: (BuildContext context, ExpenseNotifier expenseNotifier,
              Widget? child) =>
          Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: ColorConsts.mainAppColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(SizeConsts.expensesWidgetBorderRadius),
                topRight:
                    Radius.circular(SizeConsts.expensesWidgetBorderRadius))),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(SizeConsts.secondaryPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExpenseTrackingWidget(
                    price: "1 400 000", title: TextConsts.expences),
                ExpenseTrackingWidget(
                    price: "1 700 000", title: TextConsts.incomings),
                ExpenseTrackingWidget(
                    price: "400 000", title: TextConsts.cashback)
              ],
            ),
          ),
          PieChartStack(),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: ExpensesCategories(),
          ),
        ]),
      ),
    );
  }
}
