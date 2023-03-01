import 'package:equatable/equatable.dart';
import 'package:untitled3/custom_color_scheme.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent([List props = const <dynamic>[]]) : super();
}

class ThemeChanged extends ThemeEvent {
  final MyColorScheme myColorScheme;

  const ThemeChanged({required this.myColorScheme});

  @override
  List<Object?> get props => [myColorScheme];
}
