sealed class CounterState {}

final class CounterInitial extends CounterState {}
final class CounterAdditionalState extends CounterState{}
final class CounterResetState extends CounterState {}
final class CounterUpdateColorState extends CounterState{}
final class CounterUpdateNameState extends CounterState{}
