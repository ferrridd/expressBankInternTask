import 'package:express_bank_mock/constants/month.dart';
import 'package:express_bank_mock/models/card_data.dart';
import 'package:express_bank_mock/models/expense_categories/expense_category.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import '../date_data.dart';
import '../expense_categories/airlines.dart';
import '../expense_categories/governmental_services.dart';
import '../expense_categories/health.dart';
import '../expense_categories/hotel_and_motel.dart';
import '../expense_categories/rent_a_car.dart';
import '../expense_categories/single_expense.dart';
import '../expense_categories/transport.dart';
import '../expense_categories/business_services.dart';
import '../expense_categories/car_and_vehicle.dart';
import '../expense_categories/clothing_store.dart';
import '../expense_categories/entertainment.dart';
import '../expense_categories/expense_category.dart';
import '../expense_categories/membership_organizations.dart';
import '../expense_categories/money_transfers.dart';
import '../expense_categories/other_stores.dart';
import '../expense_categories/personal_services.dart';
import '../expense_categories/repair_services.dart';
import '../expense_categories/sale_by_mail.dart';
import '../expense_categories/wholesale_suppliers.dart';

class ExpenseNotifier extends ChangeNotifier {
  String cardTitle = CardDatas.cardNumbers[0];
  String month = CardDatas.months[0];

  List<ExpenseCategory> expenses = [
    Transport(
        DateData(day: "1", month: Month.january, year: "2021", hour: "13:20"),
        1500, [
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Bus Trip"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Taxi Trip"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Car Trip"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Bus Trip"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 180,
          title: "Uber")
    ]),
    GovernmentalServices(
        DateData(day: "2", month: Month.january, year: "2021", hour: "13:23"),
        2000, [
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Paper works"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Documents"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Lawyer"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Documents"),
      SingleExpense(
        price: 180,
        title: "Documents",
        dateData: DateData(
            day: "1",
            month: Month.januaryInLetters,
            year: "2021",
            hour: "13:20"),
      ),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Lawyer"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Documents"),
      SingleExpense(
        price: 150,
        title: "Lawyer",
        dateData: DateData(
            day: "1",
            month: Month.januaryInLetters,
            year: "2021",
            hour: "13:20"),
      )
    ]),
    Airlines(
        DateData(day: "2", month: Month.january, year: "2021", hour: "15:28"),
        1750, [
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Flight to Turkey"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Flight to Israel"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Flight to USA"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Airline"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 180,
          title: "Airport trip"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Plane flight"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Plane flight"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 150,
          title: "Plane flight")
    ]),
    Health(
      DateData(day: "5", month: Month.january, year: "2021", hour: "19:10"),
      850,
      [
        SingleExpense(
            dateData: DateData(
                day: "1",
                month: Month.januaryInLetters,
                year: "2021",
                hour: "13:20"),
            price: 200,
            title: "Doctor check"),
        SingleExpense(
            dateData: DateData(
                day: "1",
                month: Month.januaryInLetters,
                year: "2021",
                hour: "13:20"),
            price: 200,
            title: "Doctor check"),
        SingleExpense(
            dateData: DateData(
                day: "1",
                month: Month.januaryInLetters,
                year: "2021",
                hour: "13:20"),
            price: 200,
            title: "Doctor check"),
        SingleExpense(
            dateData: DateData(
                day: "1",
                month: Month.januaryInLetters,
                year: "2021",
                hour: "13:20"),
            price: 200,
            title: "Doctor check"),
        SingleExpense(
            dateData: DateData(
                day: "1",
                month: Month.januaryInLetters,
                year: "2021",
                hour: "13:20"),
            price: 180,
            title: "Doctor check"),
        SingleExpense(
            dateData: DateData(
                day: "1",
                month: Month.januaryInLetters,
                year: "2021",
                hour: "13:20"),
            price: 200,
            title: "Doctor check"),
        SingleExpense(
            dateData: DateData(
                day: "1",
                month: Month.januaryInLetters,
                year: "2021",
                hour: "13:20"),
            price: 200,
            title: "Doctor check"),
        SingleExpense(
            dateData: DateData(
                day: "1",
                month: Month.januaryInLetters,
                year: "2021",
                hour: "13:20"),
            price: 150,
            title: "Doctor check"),
        SingleExpense(
            dateData: DateData(
                day: "1",
                month: Month.januaryInLetters,
                year: "2021",
                hour: "13:20"),
            price: 200,
            title: "Heart check"),
        SingleExpense(
            dateData: DateData(
                day: "1",
                month: Month.januaryInLetters,
                year: "2021",
                hour: "13:20"),
            price: 200,
            title: "Heart check"),
      ],
    ),
    RentACar(
        DateData(day: "10", month: Month.january, year: "2021", hour: "18:23"),
        2000, [
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "BMW renting"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "BMW renting"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "BMW renting"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "BMW renting"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 180,
          title: "BMW renting"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "BMW renting"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "BMW renting"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 150,
          title: "BMW renting"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "BMW renting"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "BMW renting"),
    ]),
    HotelAndMotel(
        DateData(day: "11", month: Month.january, year: "2021", hour: "13:23"),
        2100, [
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Rixos"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Rixos hotel"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Rixos hotel"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Rixos hotel"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 180,
          title: "Rixos hotel"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Rixos hotel"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Rixos hotel"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 150,
          title: "Rixos hotel"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Rixos hotel"),
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Rixos hotel"),
    ])
  ];
  ExpenseCategory singleSelectedCategory = Transport(
      DateData(day: "1", month: Month.january, year: "2021", hour: "13:20"),
      1500, [
    SingleExpense(
        dateData: DateData(
            day: "1",
            month: Month.januaryInLetters,
            year: "2021",
            hour: "13:20"),
        price: 200,
        title: "Bus Trip")
  ]);

  void giveCategoryValue(ExpenseCategory expenseCategory) {
    this.singleSelectedCategory = expenseCategory;
  }

  void makeCategoryNull() {
    this.singleSelectedCategory = Transport(
        DateData(day: "1", month: Month.january, year: "2021", hour: "13:20"),
        1500, [
      SingleExpense(
          dateData: DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          price: 200,
          title: "Bus Trip")
    ]);
  }

  void changeMonth(String month) {
    this.month = month;
    notifyListeners();
  }

  void changeCardTitle(String cardTitle) {
    this.cardTitle = cardTitle;
    notifyListeners();
  }

  Future<void> changeExpenses() async {
    List<ExpenseCategory> temp = [];
    for (var i = 0; i < CardDatas.cardDatas.length; i++) {
      if (CardDatas.cardDatas[i].name == cardTitle) {
        for (int j = 0; j < CardDatas.cardDatas[i].expenses.length; j++) {
          if (CardDatas.cardDatas[i].expenses[j].dateData.month == this.month) {
            temp.add(CardDatas.cardDatas[i].expenses[j]);
          }
        }
      }
    }
    this.expenses = temp;
    notifyListeners();
  }

  int returnTotal() {
    double total = 0;
    expenses.forEach((element) {
      total += element.price;
    });
    return total.toInt();
  }

  // get expenses => expenses;

  List<PieChartSectionData> getSections(int touchedIndex) => this
      .expenses
      .asMap()
      .map<int, PieChartSectionData>((index, data) {
        final isTouched = index == touchedIndex;
        final double radius = isTouched ? 60 : 40;

        final value = PieChartSectionData(
            radius: radius,
            color: data.color,
            value: data.price.toDouble(),
            showTitle: false);
        return MapEntry(index, value);
      })
      .values
      .toList();
}
