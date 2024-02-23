import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/counter_button.dart';
import 'package:untitled/movie_bloc.dart';

import 'counter_text.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieBloc>(
        create: (context) => MovieBloc(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Bloc"),
          ),
          body: Column(
            children: const [
              CounterText(),
              CounterButton()
            ],
          ),
        )
    );
  }
}
