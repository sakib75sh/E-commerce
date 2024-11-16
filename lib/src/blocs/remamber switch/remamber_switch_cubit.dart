// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'remamber_switch_state.dart';

class RemamberSwitchCubit extends Cubit<RemamberSwitchState> {
  RemamberSwitchCubit() : super(RemamberSwitchInitial());

  void switchToggle(bool vale) {
    emit(SwitchChanged(value: vale));
  }
}
