import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_task/cubit/state.dart';

class CountCubit extends  Cubit<CounterState>{
  CountCubit() : super(InitialeState());

  static CountCubit get(context) =>BlocProvider.of(context);
  int counter =0;
  void add(){
    counter++;
    emit(AddState());
  }

  void minece(){
    counter--;
    emit(mineceState());
  }

}