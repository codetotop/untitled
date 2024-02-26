import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter",
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: Scaffold(
            appBar: AppBar(),
            body: BlocBuilder<CounterBloc, CounterInitial>(
              builder: (context, state) {
                return Text(state.count.toString());
              },
            ),
            floatingActionButton: Theme(
                data: Theme.of(context).copyWith(splashColor: Colors.pink),
                child: BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    return FloatingActionButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(
                            CounterIncrementClicked());
                      },
                       child: const Icon(Icons.add),
                    );
                  },
                ))
        ),
      ),
    );
  }
}
