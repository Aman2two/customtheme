import 'package:equatable/equatable.dart';
import 'package:untitled3/custom_color_scheme.dart';

class ThemeState extends Equatable {
  final MyColorScheme myColorScheme;

  const ThemeState(this.myColorScheme) : super();

  @override
  List<Object?> get props => [myColorScheme];
}
