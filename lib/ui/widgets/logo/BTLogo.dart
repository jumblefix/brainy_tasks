import 'package:brainy_tasks/constants/AppConstants.dart';
import 'package:flutter/material.dart';

class BTLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/images/bt-icon.png',
          height: 32,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          AppConstants.app_name,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
