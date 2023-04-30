import 'package:flutter/material.dart';

import '../constant.dart';
import '../result_page.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.onPress,
    required this.text,
  }) : super(key: key);

  final Function() onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: App.kBottomContainerHeight,
        width: double.infinity,
        color: App.kBottomContainerColor,
        child: Center(
          child: Text(
            text,
            style: App.kLargeButtonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
