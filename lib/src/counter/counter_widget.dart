// this file will contain the counter ui

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trying_bloc/src/counter/counter_bloc.dart';
import 'package:trying_bloc/src/counter/counter_model.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, Counter>(
      // return BlocBuilder<CounterBloc, Counter>(
      bloc: counterCubit,
      // bloc: counterBloc,
      builder: (context, state) => Text(
        state.value.toString(),
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
