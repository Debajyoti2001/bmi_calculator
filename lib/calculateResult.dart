import 'dart:math';

class  CalculateResult{
  CalculateResult({required this.weight,required this.height});
  final int height;
  final int weight;
  double result = 0.0;
  String calculate()
  {
    result = weight / pow(height/100, 2);
    return result.toStringAsFixed(1);
  }
  String getResult()
  {
    if(result >= 25)
      return 'Overweight';
    else if(result > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }
  String getInterpretation()
  {
    if(result >= 25)
      return 'You have a higher than normal body weight. Try to excercise more.';
    else if(result > 18.5)
      return 'You have a normal body weight. Good job.';
    else
      return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}