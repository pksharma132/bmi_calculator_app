import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;
  BottomButton({@required this.buttonTitle, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kcalculateButtonStyle,
          ),
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}
