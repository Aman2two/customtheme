

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/theme/bloc/theme_event.dart';
import 'package:untitled3/theme/bloc/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent,ThemeState>{
  ThemeBloc(super.initialState);

  @override
  void onEvent(ThemeEvent event) {
    super.onEvent(event);


  }
}