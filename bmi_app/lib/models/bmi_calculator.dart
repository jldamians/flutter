import 'dart:math';

class BmiCalculator {
  final int height;
  final int weight;
  double _bmi;

  BmiCalculator({this.height, this.weight});

  String calculate() {
    this._bmi = this.weight / pow(this.height / 100, 2);
    return this._bmi.toStringAsFixed(2);
  }

  String getResultado() {
    if (this._bmi >= 25) {
      return 'Sobre Peso';
    } else if (this._bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Bajo de Peso';
    }
  }

  String getInterpretacion() {
    if (this._bmi >= 25) {
      return 'You have a higher than normal body weight. Try to excercise more.';
    } else if (this._bmi >= 18.5) {
      return 'You have a normal body weiht. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
