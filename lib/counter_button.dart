import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/movie_bloc.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(
      builder: (context, state) {
        return ElevatedButton(
            onPressed: () {
              context.read<MovieBloc>().add(const CounterIncrementClicked());
            },
            child: const Text("Increase count")
        );
      },
    );
  }
}
