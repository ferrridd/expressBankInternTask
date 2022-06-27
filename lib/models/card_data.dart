import 'package:express_bank_mock/constants/image_link_consts.dart';
import 'package:express_bank_mock/constants/month.dart';
import 'package:express_bank_mock/models/date_data.dart';
import 'package:express_bank_mock/models/expense_categories/airlines.dart';
import 'package:express_bank_mock/models/expense_categories/business_services.dart';
import 'package:express_bank_mock/models/expense_categories/car_and_vehicle.dart';
import 'package:express_bank_mock/models/expense_categories/clothing_store.dart';
import 'package:express_bank_mock/models/expense_categories/entertainment.dart';
import 'package:express_bank_mock/models/expense_categories/expense_category.dart';
import 'package:express_bank_mock/models/expense_categories/governmental_services.dart';
import 'package:express_bank_mock/models/expense_categories/health.dart';
import 'package:express_bank_mock/models/expense_categories/hotel_and_motel.dart';
import 'package:express_bank_mock/models/expense_categories/membership_organizations.dart';
import 'package:express_bank_mock/models/expense_categories/other_stores.dart';
import 'package:express_bank_mock/models/expense_categories/professional_services.dart';
import 'package:express_bank_mock/models/expense_categories/rent_a_car.dart';
import 'package:express_bank_mock/models/expense_categories/repair_services.dart';
import 'package:express_bank_mock/models/expense_categories/sale_by_mail.dart';
import 'package:express_bank_mock/models/expense_categories/single_expense.dart';
import 'package:express_bank_mock/models/expense_categories/wholesale_suppliers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'expense_categories/transport.dart';

class CardData {
  String name;
  String imageLink = ImageLinkConsts.expressBankCardLink;
  String cardNumber;
  List<ExpenseCategory> expenses;
  CardData(
      {required this.cardNumber, required this.expenses, required this.name});
}

class CardDatas {
  static final int percentage = 22;

  static final List<CardData> cardDatas = [
    CardData(cardNumber: "1234456785411426", name: "Expresso MC", expenses: [
      Transport(
          DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          1500,
          [
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
          DateData(
              day: "2",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:23"),
          2000,
          [
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
          DateData(
              day: "2",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "15:28"),
          1750,
          [
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
          DateData(
              day: "5",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "19:10"),
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
          ]),
      RentACar(
          DateData(
              day: "10",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "18:23"),
          2000,
          [
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
          DateData(
              day: "11",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:23"),
          2100,
          [
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
          ]),
      BusinessServices(
          DateData(
              day: "1",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:20"),
          1600,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Business Service"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Selling something"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Selling something"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Selling something"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Selling something"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Selling something"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Selling something"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Selling something"),
          ]),
      ClothingStore(
          DateData(
              day: "3",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:23"),
          1800,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Pull and Bear"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Pull and Bear"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Pull and Bear"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Pull and Bear"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Pull and Bear"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Pull and Bear"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Pull and Bear"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Pull and Bear"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Pull and Bear"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Pull and Bear"),
          ]),
      HotelAndMotel(
          DateData(
              day: "3",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "15:28"),
          1750,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Rixos"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
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
                price: 200,
                title: "Rixos hotel"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
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
                    month: Month.februaryInLetters,
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
                    month: Month.februaryInLetters,
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
                price: 200,
                title: "Rixos hotel"),
          ]),
      Health(
          DateData(
              day: "5",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "19:10"),
          985,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Doctor check"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Doctor check"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Doctor check"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Doctor check"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Doctor check"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Doctor check"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Doctor check"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Doctor check"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Heart check"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Heart check"),
          ]),
      WholesaleSuppliers(
          DateData(
              day: "10",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "18:23"),
          782,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Buying stuff on Amazon"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Buying stuff on Amazon"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Buying stuff on Amazon"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Buying stuff on Amazon"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Buying stuff on Amazon"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Buying stuff on Amazon"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Buying stuff on Amazon"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Buying stuff on Amazon"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Buying stuff on Amazon"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Buying stuff on Amazon"),
          ]),
      ProfessionalServices(
          DateData(
              day: "11",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:23"),
          1475,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
          ]),
      RentACar(
          DateData(
              day: "12",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:23"),
          2000,
          [
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
                    month: Month.februaryInLetters,
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
                    month: Month.februaryInLetters,
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
      RepairServices(
          DateData(
              day: "13",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:23"),
          2000,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
          ])
    ]),
    CardData(cardNumber: "9876543212347856", name: "Expresso MC 2", expenses: [
      Airlines(
          DateData(
              day: "1",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:20"),
          1500,
          [
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
                    month: Month.februaryInLetters,
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
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Plane flight")
          ]),
      MembershipOrganizations(
          DateData(
              day: "2",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:23"),
          2000,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
          ]),
      CarAndVehicle(
          DateData(
              day: "2",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "15:28"),
          1750,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Mercedes Benz"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Mercedes Benz"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Mercedes Benz"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Mercedes Benz"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Mercedes Benz"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Mercedes Benz"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Mercedes Benz"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Mercedes Benz"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Mercedes Benz"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Mercedes Benz"),
          ]),
      Health(
          DateData(
              day: "5",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "19:10"),
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
                    month: Month.februaryInLetters,
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
                    month: Month.februaryInLetters,
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
          ]),
      RentACar(
          DateData(
              day: "10",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "18:23"),
          874,
          [
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
                    month: Month.februaryInLetters,
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
                    month: Month.februaryInLetters,
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
          DateData(
              day: "14",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:23"),
          3250,
          [
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
          ]),
      SaleByMail(
          DateData(
              day: "15",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:23"),
          542,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Sale by mail and telephone"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Sale by mail and telephone"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Sale by mail and telephone"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Sale by mail and telephone"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Sale by mail and telephone"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Sale by mail and telephone"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Sale by mail and telephone"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Sale by mail and telephone"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Sale by mail and telephone"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Sale by mail and telephone"),
          ]),
      RepairServices(
          DateData(
              day: "17",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "13:23"),
          685,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
          ]),
      OtherStores(
          DateData(
              day: "17",
              month: Month.januaryInLetters,
              year: "2021",
              hour: "18:23"),
          1150,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some other stores"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some other stores"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some other stores"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some other stores"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Some other stores"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some other stores"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some other stores"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Some other stores"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some other stores"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some other stores"),
          ]),
      Airlines(
          DateData(
              day: "1",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:28"),
          1780,
          [
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
                    month: Month.februaryInLetters,
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
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Plane flight")
          ]),
      Entertainment(
          DateData(
              day: "3",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:23"),
          1800,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Cinema and Parks"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Cinema and Parks"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Cinema and Parks"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Cinema and Parks"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Cinema and Parks"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Cinema and Parks"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Cinema and Parks"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Cinema and Parks")
          ]),
      MembershipOrganizations(
          DateData(
              day: "3",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "15:28"),
          1795,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.januaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
          ]),
      Health(
          DateData(
              day: "5",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "19:10"),
          985,
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
                    month: Month.februaryInLetters,
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
                    month: Month.februaryInLetters,
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
          ]),
      MembershipOrganizations(
          DateData(
              day: "10",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "18:23"),
          685,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some membership services"),
          ]),
      ProfessionalServices(
          DateData(
              day: "11",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:23"),
          1475,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some pro services"),
          ]),
      RentACar(
          DateData(
              day: "12",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:23"),
          2000,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "BMW renting"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "BMW renting"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "BMW renting"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "BMW renting"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "BMW renting"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "BMW renting"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "BMW renting"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "BMW renting"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "BMW renting"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "BMW renting"),
          ]),
      RepairServices(
          DateData(
              day: "13",
              month: Month.februaryInLetters,
              year: "2021",
              hour: "13:23"),
          2000,
          [
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 180,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 150,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
            SingleExpense(
                dateData: DateData(
                    day: "1",
                    month: Month.februaryInLetters,
                    year: "2021",
                    hour: "13:20"),
                price: 200,
                title: "Some repair services"),
          ])
    ]),
  ];
  static const cardNumbers = ["Expresso MC", "Expresso MC 2"];
  static const year = ["2021"];
  static const months = ["January", "February"];
}
