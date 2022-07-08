import 'dart:math';

class Calculatorbrain {
  Calculatorbrain({required this.height, required this.weight});
  // ignore: prefer_typing_uninitialized_variables
  final height;
  final weight;
  double _bmi = 0;

  String BMI() {
    _bmi = weight /
        pow(height / 100,
            2); //  height/100  to convert the height which id in centimeter to meter
    return _bmi.toStringAsFixed(1);
  }

  String calculateresult() {
    if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi >= 18.5 && _bmi < 25) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getINterpretation() {
    if (_bmi >= 25)
      return 'You have a higher than normal body weight. Try to exercise more';
    else if (_bmi >= 18.5 && _bmi < 25) {
      return 'You have a normal body weight .Good job!';
    } else {
      return 'You have a lower normal body weight. You can eat a bit more ';
    }
  }
}
