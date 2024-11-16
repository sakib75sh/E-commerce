part of 'remamber_switch_cubit.dart';

sealed class RemamberSwitchState extends Equatable {
  const RemamberSwitchState();
}

final class RemamberSwitchInitial extends RemamberSwitchState {
  @override
  List<Object?> get props => [];
}

final class SwitchChanged extends RemamberSwitchState {
  final bool value;

  const SwitchChanged({required this.value});

  @override
  List<Object?> get props => [value];
}
