import 'package:express_bank_mock/constants/color_consts.dart';
import 'package:express_bank_mock/constants/size_consts.dart';
import 'package:express_bank_mock/constants/text_consts.dart';
import 'package:express_bank_mock/models/expense_categories/expense_category.dart';
import 'package:express_bank_mock/models/providers/expense_notifier.dart';
import 'package:express_bank_mock/models/providers/sliding_up_panel_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/card_data.dart';

class ExpenseCategorySection extends StatelessWidget {
  final ExpenseCategory expenseCategory;
  const ExpenseCategorySection({Key? key, required this.expenseCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Consumer<ExpenseNotifier>(
        builder: (BuildContext context, ExpenseNotifier expenseNotifier,
                Widget? child) =>
            Consumer<SlidingUpPanelNotifier>(
          builder: (BuildContext context,
                  SlidingUpPanelNotifier slidingUpPanelNotifier,
                  Widget? child) =>
              GestureDetector(
            onTap: () {
              expenseNotifier.giveCategoryValue(expenseCategory);
              slidingUpPanelNotifier.toActivate();
            },
            child: Container(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  SizeConsts.categoryAvatarRadius),
                              border: Border.all(
                                  width: 2.8,
                                  style: BorderStyle.solid,
                                  color: expenseCategory.color!)),
                          child: CircleAvatar(
                            backgroundColor: ColorConsts.mainAppColor,
                            child: expenseCategory.icon,
                          ),
                        ),
                        SizedBox(
                          width: SizeConsts.kDefaultPadding - 2,
                        ),
                        SizedBox(
                          width: 150,
                          child: Text(
                            expenseCategory.title,
                            style: TextStyle(
                                fontSize: SizeConsts.categoryFontSize,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          CardDatas.percentage.toString() + "%",
                          style: TextStyle(
                              fontSize: SizeConsts.categoryFontSize,
                              color: ColorConsts.percentageTextColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                              SizeConsts.kDefaultPadding / 2),
                          child: Icon(
                            Icons.circle,
                            color: Colors.orange,
                            size: 5,
                          ),
                        ),
                        Text(
                          expenseCategory.price.toString() +
                              " " +
                              TextConsts.azn,
                          style: TextStyle(
                              fontSize: SizeConsts.categoryFontSize,
                              color: ColorConsts.percentageTextColor),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Divider(
                    thickness: 1.3,
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
