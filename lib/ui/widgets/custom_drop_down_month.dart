import 'package:express_bank_mock/constants/color_consts.dart';
import 'package:express_bank_mock/constants/image_link_consts.dart';
import 'package:express_bank_mock/constants/size_consts.dart';
import 'package:express_bank_mock/models/card_data.dart';
import 'package:express_bank_mock/models/providers/expense_notifier.dart';
import 'package:express_bank_mock/models/providers/sliding_up_panel_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomDropDownMonth extends StatelessWidget {
  final double width;
  CustomDropDownMonth({required this.width});
  @override
  Widget build(BuildContext context) {
    return Consumer<SlidingUpPanelNotifier>(
      builder: (BuildContext context,
              SlidingUpPanelNotifier slidingUpPanelNotifier, Widget? child) =>
          Consumer<ExpenseNotifier>(
        builder: (BuildContext context, ExpenseNotifier expenseNotifier,
                Widget? child) =>
            Container(
          width: width,
          decoration: BoxDecoration(
              color: ColorConsts.mainDropDownColor,
              borderRadius:
                  BorderRadius.circular(SizeConsts.dropDownButtonBorderRadius)),
          height: 58,
          child: Padding(
            padding: const EdgeInsets.all(SizeConsts.kDefaultPadding),
            child: DropdownButton<String>(
              isExpanded: true,
              icon: Icon(Icons.keyboard_arrow_down_sharp),
              underline: Container(),
              items: CardDatas.months
                  .toList()
                  .map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(
                  child: Text(
                    value,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  value: (value),
                );
              }).toList(),
              onChanged: (value) async {
                slidingUpPanelNotifier.toDeactivate();
                expenseNotifier.changeMonth(value!);
                await expenseNotifier.changeExpenses();
              },
              value: expenseNotifier.month,
            ),
          ),
        ),
      ),
    );
  }
}
