import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({required this.height,required this.weight});
  late final int height;
  late final int weight;
  late double _bmi;

  String calculateBMI(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    }else if(_bmi>18.5){
      return 'normal';
    }else{
      return 'underweight';
    }
  }

  String getInterpretation(){
    if(_bmi>=25){
      return 'You\'re carrying some extra weight, so it might be beneficial to incorporate more physical activity into your routine';
    }else if(_bmi>18.5){
      return 'Your body weight falls within the healthy range. Well done!';
    }else{
      return 'Your body weight is below the typical range, so consider increasing your food intake slightly for a balanced and healthy lifestyle';
    }
  }

}
