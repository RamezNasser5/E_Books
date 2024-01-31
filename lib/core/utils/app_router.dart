import 'package:e_books/core/utils/services_located.dart';
import 'package:e_books/features/home/data/models/book_model/book_model.dart';
import 'package:e_books/features/home/data/repos/home_repo_impl.dart';
import 'package:e_books/features/home/presentaion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:e_books/features/home/presentaion/views/book_details_view.dart';
import 'package:e_books/features/Splach/presentation/views/splach_view.dart';
import 'package:e_books/features/home/presentaion/views/home_view.dart';
import 'package:e_books/features/search/presentaion/views/search_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBooksDetailsView = '/booksDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplachView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBooksDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getit.get<HomeRepoImpl>()),
        child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
