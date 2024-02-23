part of 'movie_bloc.dart';

class MovieState extends Equatable {

  const MovieState({
    this.count = 0,
    this.name = "",
  });

  final int count;
  final String name;

  MovieState copyWith({int? count, String? name}) {
    return MovieState(count: count ?? this.count, name: name ?? this.name);
  }

  @override
  List<Object?> get props => [count];
}
