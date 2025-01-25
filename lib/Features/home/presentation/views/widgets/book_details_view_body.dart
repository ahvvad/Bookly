import 'package:flutter/material.dart';

import 'book_rateing.dart';
import 'box_action.dart';
import 'custom_book_image.dart';
import 'custom_book_details_app_bar.dart';
import '../../../../../Core/utils/styles.dart';

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
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43.2),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        Opacity(
          opacity: 0.8,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 30.0),
        const BooksActions(),
      ],
    );
  }
}