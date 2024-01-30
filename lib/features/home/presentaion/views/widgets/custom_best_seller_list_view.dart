import 'package:e_books/core/widgets/custom_error_failure.dart';
import 'package:e_books/core/widgets/custom_loading_inicator.dart';
import 'package:e_books/features/home/presentaion/manager/newest_book_cubit/newest_books_cubit.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: CustomBestSellerItem(
                  bookModel: state.books[index],
                ),
              );
            }),
          );
        } else if (state is NewestBooksFailure) {
          return CustomFailureErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
