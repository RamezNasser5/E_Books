import 'package:e_books/core/widgets/custom_error_failure.dart';
import 'package:e_books/core/widgets/custom_loading_inicator.dart';
import 'package:e_books/features/home/presentaion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.17,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: ((context, index) {
                  return CustomBooksItem(
                    bookModel: state.books[index],
                  );
                }),
              ),
            );
          } else if (state is SimilarBooksFailure) {
            return CustomFailureErrorMessage(errorMessage: state.errorMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
