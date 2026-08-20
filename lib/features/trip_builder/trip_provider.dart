import 'package:flutter_riverpod/flutter_riverpod.dart';

class TripState {
  final String destination;
  final String dates;
  final String travelers;
  final List<String> styles;

  TripState({
    this.destination = '',
    this.dates = '',
    this.travelers = '',
    this.styles = const [],
  });

  TripState copyWith({
    String? destination,
    String? dates,
    String? travelers,
    List<String>? styles,
  }) {
    return TripState(
      destination: destination ?? this.destination,
      dates: dates ?? this.dates,
      travelers: travelers ?? this.travelers,
      styles: styles ?? this.styles,
    );
  }
}

class TripNotifier extends StateNotifier<TripState> {
  TripNotifier() : super(TripState());

  void setDestination(String dest) {
    state = state.copyWith(destination: dest);
  }

  void setDates(String dates) {
    state = state.copyWith(dates: dates);
  }

  void setTravelers(String travelers) {
    state = state.copyWith(travelers: travelers);
  }

  void setStyles(List<String> styles) {
    state = state.copyWith(styles: styles);
  }
}

final tripProvider = StateNotifierProvider<TripNotifier, TripState>((ref) {
  return TripNotifier();
});
