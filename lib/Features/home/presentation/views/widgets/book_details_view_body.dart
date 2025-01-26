import 'package:flutter/material.dart';

import 'similar_books_section.dart';
import 'book_details_ection.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              BookDetailsSection(),
              Expanded(child: SizedBox(height: 30.0)),
              SimilarBooksSection(),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ],
    );
  }
}
