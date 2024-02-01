import 'package:e_books/core/widgets/custom_error_failure.dart';
import 'package:e_books/core/widgets/custom_loading_inicator.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_best_seller_item.dart';
import 'package:e_books/features/search/presentaion/view_models/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultSearchListView extends StatelessWidget {
  const ResultSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
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
        } else if (state is SearchFailure) {
          return CustomFailureErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
