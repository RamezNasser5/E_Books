import 'package:e_books/core/widgets/custom_error_failure.dart';
import 'package:e_books/core/widgets/custom_loading_inicator.dart';
import 'package:e_books/features/home/presentaion/manager/featured_book_cubit/featured_book_cubit.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return CustomBooksItem(
                  bookModel: state.books[index],
                );
              }),
            ),
          );
        } else if (state is FeaturedBookFailure) {
          return CustomFailureErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
