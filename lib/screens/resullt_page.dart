import 'package:bmi_calculator/components/constatnt_file.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../constatnt_file.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              resultText,
              style: kResultTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: kActiveContainerColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: kResultStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kResultTextStyle,
                  ),
                  Text(interpretation),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              show: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
