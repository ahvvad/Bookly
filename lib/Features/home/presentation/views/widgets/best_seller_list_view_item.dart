import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rateing.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: GestureDetector(
        // page navigation
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.6 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.teal,
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AssetsData.test,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'The Jungle Book',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20.copyWith(
                          fontFamily: kGTSectra,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 3.0),
                    const Text('Rudyard Kipling', style: Styles.textStyle14),
                    const SizedBox(height: 3.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '19.99',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(width: 3.0),
                        Text(
                          '€',
                          style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.w800, fontSize: 16.0),
                        ),
                        const Spacer(),
                        const BookRating(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
