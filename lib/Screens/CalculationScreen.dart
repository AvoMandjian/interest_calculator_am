import 'package:flutter/material.dart';
import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/shape/gf_button_shape.dart';
import 'package:interestcalculatoram/Module/InterestCalculator.dart';

class CalculationScreen extends StatefulWidget {
  CalculationScreen(
      {this.interestRate, this.numberOfMonths, this.initialAmount});
  final String initialAmount;
  final String interestRate;
  final String numberOfMonths;

  @override
  _CalculationScreenState createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
            'Your Total Amount After ${widget.numberOfMonths} months is: ${InterestCalculator(initialAmount: widget.initialAmount, interestRate: widget.interestRate, numberOfMonths: widget.numberOfMonths).getFutureAmount()}'),
        Text(
            'Your Interest Amount is: ${(InterestCalculator(initialAmount: widget.initialAmount, interestRate: widget.interestRate, numberOfMonths: widget.numberOfMonths).getInterestAmount())}'),
        GFButton(
          onPressed: () {
            Navigator.pop(context);
          },
          text: "Recalculate",
          textStyle: TextStyle(fontSize: 35),
          shape: GFButtonShape.pills,
          fullWidthButton: true,
          size: 100,
        ),
      ],
    );
  }
}
