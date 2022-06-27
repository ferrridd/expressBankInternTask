import 'package:express_bank_mock/constants/color_consts.dart';
import 'package:express_bank_mock/constants/image_link_consts.dart';
import 'package:express_bank_mock/constants/size_consts.dart';
import 'package:express_bank_mock/models/card_data.dart';
import 'package:express_bank_mock/models/providers/expense_notifier.dart';
import 'package:express_bank_mock/models/providers/sliding_up_panel_notifier.dart';
import 'package:express_bank_mock/ui/widgets/card_drop_down.dart';
import 'package:express_bank_mock/ui/widgets/custom_drop_down_month.dart';
import 'package:express_bank_mock/ui/widgets/home_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../widgets/category_sliding_up_panel.dart';
import '../widgets/custom_drop_down_year.dart';
import '../widgets/expenses_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConsts.mainBackgroundColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(SizeConsts.appBarHeight),
          child: HomeScreenAppBar()),
      body: Consumer<ExpenseNotifier>(
        builder: (BuildContext context, ExpenseNotifier expenseNotifier,
                Widget? child) =>
            Consumer<SlidingUpPanelNotifier>(
          builder: (BuildContext context,
                  SlidingUpPanelNotifier slidingUpPanelNotifier,
                  Widget? child) =>
              SlidingUpPanel(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            defaultPanelState: PanelState.CLOSED,
            minHeight: slidingUpPanelNotifier.returnMinHeight(),
            maxHeight: MediaQuery.of(context).size.height * 0.88,
            panelBuilder: (controller) => CategorySlidingUpPanel(
              controller: controller,
              expense: expenseNotifier.singleSelectedCategory,
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                CardDropDown(imageLink: ImageLinkConsts.expressBankCardLink),
                Row(
                  children: [
                    SizedBox(
                      width: SizeConsts.kDefaultPadding,
                    ),
                    CustomDropDownYear(
                      strings: CardDatas.year,
                      width: MediaQuery.of(context).size.width * 0.250,
                    ),
                    SizedBox(
                      width: SizeConsts.kDefaultPadding,
                    ),
                    CustomDropDownMonth(
                      width: MediaQuery.of(context).size.width * 0.650,
                    ),
                    SizedBox(
                      width: SizeConsts.kDefaultPadding,
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConsts.kDefaultPadding,
                ),
                ExpensesWidget(),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
