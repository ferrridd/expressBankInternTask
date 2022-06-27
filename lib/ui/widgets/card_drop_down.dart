import 'package:express_bank_mock/constants/color_consts.dart';
import 'package:express_bank_mock/constants/image_link_consts.dart';
import 'package:express_bank_mock/constants/size_consts.dart';
import 'package:express_bank_mock/models/card_data.dart';
import 'package:express_bank_mock/models/providers/expense_notifier.dart';
import 'package:express_bank_mock/models/providers/sliding_up_panel_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// class CardDropDown extends StatefulWidget {
//   final String imageLink;
//   const CardDropDown({Key? key, required this.imageLink}) : super(key: key);

//   @override
//   State<CardDropDown> createState() => _CardDropDownState();
// }

class CardDropDown extends StatelessWidget {
  final String imageLink;
  CardDropDown({Key? key, required this.imageLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SlidingUpPanelNotifier>(
      builder: (BuildContext context,
              SlidingUpPanelNotifier slidingUpPanelNotifier, Widget? child) =>
          Consumer<ExpenseNotifier>(
        builder: (BuildContext context, ExpenseNotifier expenseNotifier,
                Widget? child) =>
            Padding(
          padding: const EdgeInsets.all(SizeConsts.kDefaultPadding),
          child: Container(
            decoration: BoxDecoration(
                color: ColorConsts.mainDropDownColor,
                borderRadius: BorderRadius.circular(
                    SizeConsts.dropDownButtonBorderRadius)),
            width: double.infinity,
            height: SizeConsts.dropDownButtonHeight,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  ImageLinkConsts.expressBankCardLink,
                  height: 100,
                  width: 100,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(SizeConsts.kDefaultPadding),
                    child: DropdownButton<String>(
                      icon: Icon(Icons.keyboard_arrow_down_sharp),
                      underline: Container(),
                      isExpanded: true,
                      items: CardDatas.cardNumbers
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
                        expenseNotifier.changeCardTitle(value!);
                        await expenseNotifier.changeExpenses();
                      },
                      value: expenseNotifier.cardTitle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
