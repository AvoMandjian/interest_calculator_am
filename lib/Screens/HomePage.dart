import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getflutter/getflutter.dart';
import 'package:interestcalculatoram/Screens/CalculationScreen.dart';

class HomePage extends StatelessWidget {
  static const String id = 'HomePage';
  static String initialAmount = '0';
  static String interestRate = '0';
  static String numberOfMonths = '0';
  final inputInitialAmountController = TextEditingController();
  final inputInterestRateController = TextEditingController();
  final inputNumberOfMonthsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intrest Rate Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              controller: inputInitialAmountController,
              onChanged: (value) => initialAmount = value,
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                icon: Icon(FontAwesomeIcons.moneyBill),
                labelText: 'Initial Amount',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            TextField(
              controller: inputInterestRateController,
              onChanged: (value) => interestRate = value,
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                icon: Icon(FontAwesomeIcons.percent),
                labelText: 'Interest Rate Per Year',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            TextField(
              controller: inputNumberOfMonthsController,
              onChanged: (value) => numberOfMonths = value,
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                icon: Icon(Icons.date_range),
                labelText: 'Number of Months',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            GFButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) => CalculationScreen(
                    initialAmount: initialAmount,
                    interestRate: interestRate,
                    numberOfMonths: numberOfMonths,
                  ),
                );
                inputInitialAmountController.clear();
                inputInterestRateController.clear();
                inputNumberOfMonthsController.clear();
              },
              text: "Calculate",
              textStyle: TextStyle(fontSize: 35),
              shape: GFButtonShape.pills,
              fullWidthButton: true,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
