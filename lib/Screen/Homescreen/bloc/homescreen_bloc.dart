import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'homescreen_event.dart';
part 'homescreen_state.dart';

class HomescreenBloc extends Bloc<HomescreenEvent, HomescreenState> {

  bool isloadin = false;


  HomescreenBloc() : super(HomescreenInitial()) {
    on<HomescreenEvent>((event, emit) {
      // TODO: implement event handler

      if(event is ImagechangingEvent){
        isloadin ? isloadin = false : isloadin = true;

        debugPrint("---isloadin---"+isloadin.toString());
        emit(ImageChangedState());
      }

    });
  }

  void sample(){

  }

}
