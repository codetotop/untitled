import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'movie_bloc.dart';

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(
      // buildWhen: (previous, current) => previous.count != current.count,
      builder: (context, state) {
        return Text(state.count.toString());
      },
    );
  }
}
