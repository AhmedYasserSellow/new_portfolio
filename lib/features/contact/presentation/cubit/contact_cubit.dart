import 'package:flutter_bloc/flutter_bloc.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactInitial());
}
