part of 'news_cubit_cubit.dart';


abstract class NewsCubitState {}

final class NewsCubitInitial extends NewsCubitState {}

final class NewsCubitLoading extends NewsCubitState {}

final class NewsCubitSuccess extends NewsCubitState {
  final List<GeneralNewsModel> newsList;
  NewsCubitSuccess(this.newsList);
}

final class NewsCubitError extends NewsCubitState {
  final String errorMessage;
  NewsCubitError(this.errorMessage);
}