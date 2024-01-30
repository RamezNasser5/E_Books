import 'package:dio/dio.dart';
import 'package:e_books/core/utils/api_services.dart';
import 'package:e_books/features/home/data/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setUpServireLocator() {
  getit.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getit.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getit.get<ApiServices>(),
    ),
  );
}
