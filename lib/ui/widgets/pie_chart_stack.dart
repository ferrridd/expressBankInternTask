import 'package:express_bank_mock/constants/size_consts.dart';
import 'package:express_bank_mock/constants/text_consts.dart';
import 'package:express_bank_mock/models/providers/expense_notifier.dart';
import 'package:express_bank_mock/models/providers/pie_chart_slice_notifier.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PieChartStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PieChartSliceNotifier>(
      builder: (BuildContext context,
              PieChartSliceNotifier pieChartSliceNotifier, Widget? child) =>
          Consumer<ExpenseNotifier>(
        builder: (BuildContext context, ExpenseNotifier expenseNotifier,
                Widget? child) =>
            AspectRatio(
          aspectRatio: SizeConsts.kAspectRatio,
          child: Stack(
            children: [
              PieChart(
                PieChartData(
                    pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        pieChartSliceNotifier.touchSlice(-1);
                        return;
                      }
                      pieChartSliceNotifier.touchSlice(
                          pieTouchResponse.touchedSection!.touchedSectionIndex);
                    }),
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 8,
                    centerSpaceRadius: 140,
                    sections: expenseNotifier
                        .getSections(pieChartSliceNotifier.index)),
              ),
              Align(
                alignment: Alignment.center,
                child: pieChartSliceNotifier.index >= 0
                    ? Container(
                        width: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              expenseNotifier
                                      .expenses[pieChartSliceNotifier.index]
                                      .title +
                                  " " +
                                  (100 *
                                          expenseNotifier
                                              .expenses[
                                                  pieChartSliceNotifier.index]
                                              .price /
                                          expenseNotifier.returnTotal())
                                      .toInt()
                                      .toString() +
                                  "%",
                              style: TextStyle(
                                  fontSize: SizeConsts.pieChartMainFontSize),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              expenseNotifier
                                  .expenses[pieChartSliceNotifier.index].price
                                  .toString(),
                              style: TextStyle(
                                  fontSize:
                                      SizeConsts.pieChartSecondaryFontSize,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              TextConsts.azn + "/month",
                              style: TextStyle(
                                  fontSize: SizeConsts.pieChartMainFontSize),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "View Statement",
                              style: TextStyle(
                                  fontSize: SizeConsts.pieChartMainFontSize,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
