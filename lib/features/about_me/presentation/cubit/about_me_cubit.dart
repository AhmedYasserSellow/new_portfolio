import 'package:flutter_bloc/flutter_bloc.dart';

part 'about_me_state.dart';

class AboutMeCubit extends Cubit<AboutMeState> {
  AboutMeCubit() : super(AboutMeInitial());
}
