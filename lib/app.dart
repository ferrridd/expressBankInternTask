import 'package:express_bank_mock/models/providers/expense_notifier.dart';
import 'package:express_bank_mock/models/providers/pie_chart_slice_notifier.dart';
import 'package:express_bank_mock/models/providers/sliding_up_panel_notifier.dart';
import 'package:express_bank_mock/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ExpenseNotifier()),
        ChangeNotifierProvider(create: (_) => SlidingUpPanelNotifier()),
        ChangeNotifierProvider(create: (_) => PieChartSliceNotifier()),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
