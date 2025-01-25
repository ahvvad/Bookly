import 'package:flutter/material.dart';

import '../../../../../Core/widgets/custom_button.dart';
import '../../../../../constants.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99€',
              bgColor: Colors.white,
              txtColor: kPrimaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              fontSize: 14,
              bgColor: Color(0xFFEF8262),
              txtColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
