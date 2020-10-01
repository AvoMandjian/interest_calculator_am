import 'dart:math';

class InterestCalculator {
  InterestCalculator(
      {this.interestRate, this.numberOfMonths, this.initialAmount});
  final String initialAmount;
  final String interestRate;
  final String numberOfMonths;

  String getFutureAmount() {
    var intrestRateInPercentagePerYear = double.parse(interestRate);
    var intrestRateInPercentagePerMonth = intrestRateInPercentagePerYear / 12;
    var intrestRatePerMonth = intrestRateInPercentagePerMonth / 100;
    var inputInitialAmount = double.parse(initialAmount);
    var inputNbOfMonths = double.parse(numberOfMonths);
    var futureAmount =
        (inputInitialAmount * pow(1 + intrestRatePerMonth, inputNbOfMonths))
            .toStringAsFixed(2);

    return futureAmount;
  }

  String getInterestAmount() {
    var intrestRateInPercentagePerYear = double.parse(interestRate);
    var intrestRateInPercentagePerMonth = intrestRateInPercentagePerYear / 12;
    var intrestRatePerMonth = intrestRateInPercentagePerMonth / 100;
    var inputInitialAmount = double.parse(initialAmount);
    var inputNbOfMonths = double.parse(numberOfMonths);
    var interestAmount =
        ((inputInitialAmount * pow(1 + intrestRatePerMonth, inputNbOfMonths) -
                inputInitialAmount))
            .toStringAsFixed(2);

    return interestAmount;
  }
}
