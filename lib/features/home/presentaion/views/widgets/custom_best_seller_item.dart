import 'package:e_books/consts.dart';
import 'package:e_books/core/utils/app_router.dart';
import 'package:e_books/core/utils/styles.dart';
import 'package:e_books/core/models/book_model/book_model.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_books_item.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context)
              .push(AppRouter.kBooksDetailsView, extra: bookModel);
        },
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            CustomBooksItem(bookModel: bookModel),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookModel.volumeInfo?.title ?? 'Title Not Available',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle24.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                  ),
                ),
                Text(
                  bookModel.volumeInfo?.authors![0] ?? 'Auther Not Available',
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 36,
                    ),
                    CustomRating(
                      rating: bookModel.volumeInfo?.averageRating?.round() ?? 0,
                      count: bookModel.volumeInfo?.ratingsCount ?? 0,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
