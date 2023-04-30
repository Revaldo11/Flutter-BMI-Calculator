import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/widgets/buttom_botton.dart';
import 'package:bmi_calculator/widgets/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: App.kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: App.kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: App.kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: App.kBMITextStyle,
                  ),
                  Column(
                    children: [
                      Text(
                        'Normal BMI range:',
                        style: App.kBodyTextStyle.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '18,5 - 25 kg/m2',
                        style: App.kBodyTextStyle,
                      ),
                    ],
                  ),
                  Text(
                    interpretation,
                    style: App.kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onPress: (() => Navigator.pushNamed(context, '/')),
              text: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
