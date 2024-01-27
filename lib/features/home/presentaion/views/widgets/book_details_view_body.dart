import 'package:e_books/core/utils/styles.dart';
import 'package:e_books/features/home/presentaion/views/widgets/books_action.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_books_item.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.28),
            child: const CustomBooksItem(),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 140.0, top: 14),
            child: CustomRating(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            child: BooksAtion(),
          ),
        ],
      ),
    );
  }
}
