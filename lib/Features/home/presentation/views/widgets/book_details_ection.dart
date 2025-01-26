
import 'package:bookly/Features/home/presentation/views/widgets/box_action.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';
import 'book_rateing.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(height: 33.2),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: const CustomBookImage(imageUrl: '',),
        ),
        const SizedBox(height: 33.2),
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