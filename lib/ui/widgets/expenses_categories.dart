import 'package:express_bank_mock/constants/size_consts.dart';
import 'package:express_bank_mock/models/providers/expense_notifier.dart';
import 'package:express_bank_mock/ui/widgets/expense_category_section.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/text_consts.dart';

class ExpensesCategories extends StatelessWidget {
  const ExpensesCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SizeConsts.kDefaultPadding),
      child: Consumer<ExpenseNotifier>(
        builder: (BuildContext context, ExpenseNotifier expenseNotifier,
                Widget? child) =>
            Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    TextConsts.categories,
                    style: TextStyle(fontSize: SizeConsts.categoryFontSize),
                  )),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: expenseNotifier.expenses.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: GestureDetector(
                        onTap: () {},
                        child: ExpenseCategorySection(
                          expenseCategory: expenseNotifier.expenses[index],
                        )),
                  );
                })
          ],
        ),
      ),
    );
  }
}
