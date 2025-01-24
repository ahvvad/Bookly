import 'package:flutter/material.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
          size: 14.0,
        ),
        const SizedBox(width: 6.3),
        Text(
          '4.8',
          style: Styles.textStyle16.copyWith(color: Colors.white),
        ),
        const SizedBox(width: 9.0),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: const Color(0xFFA0A0A0)),
        )
      ],
    );
  }
}
