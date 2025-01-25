import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(height: 33.2),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.20),
          child: const CustomBookImage(),
        ),
      ],
    );
  }
}
