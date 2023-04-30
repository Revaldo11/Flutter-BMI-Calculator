import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/widgets/buttom_botton.dart';
import 'package:bmi_calculator/widgets/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

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
                    'OVERWEIGHT',
                    style: App.kResultTextStyle,
                  ),
                  Text(
                    '26.7',
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
                    'You have a higher than normal body weight. Try to exercise more.',
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
