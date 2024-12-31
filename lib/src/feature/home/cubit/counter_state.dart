sealed class CounterState {}

final class CounterInitial extends CounterState {}
final class CounterAdditionalState extends CounterState{}
final class CounterResetState extends CounterState {}
final class CounterUpdateImageState extends CounterState{}
final class CounterUpdateNameState extends CounterState{}
final class CounterUpdateSizeState extends CounterState{}

