import 'package:bloc/bloc.dart';
import 'package:iti/models/general_news_model.dart';
import 'package:iti/services/news_services.dart';
import 'package:meta/meta.dart';

part 'news_cubit_state.dart';

class NewsCubitCubit extends Cubit<NewsCubitState> {
  NewsCubitCubit() : super(NewsCubitInitial());

   Future<void> getNews() async {
    emit(NewsCubitLoading());
    List<GeneralNewsModel> newsList = await NewsServices().getGereralNews();
    emit(NewsCubitSuccess(newsList));
  }
}
