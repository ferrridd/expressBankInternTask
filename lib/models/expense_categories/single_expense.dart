import 'package:express_bank_mock/constants/month.dart';

import '../date_data.dart';

class SingleExpense {
  final int price;
  final String title;
  DateData dateData;
  SingleExpense(
      {required this.price, required this.title, required this.dateData});
}
