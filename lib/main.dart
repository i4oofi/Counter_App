import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const I4oofi());
}

class I4oofi extends StatelessWidget {
  const I4oofi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 142, 10, 160),
              title: const Text(
                'Points Counter',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 500,
                      child: Column(
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(buttonNumber: 1, team: 'A');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 142, 10, 160),
                              minimumSize: const Size(150, 60),
                            ),
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 18),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(buttonNumber: 2, team: 'A');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 142, 10, 160),
                              minimumSize: const Size(150, 60),
                            ),
                            child: const Text(
                              'Add 2 Point',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 18),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(buttonNumber: 3, team: 'A');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 142, 10, 160),
                              minimumSize: const Size(150, 60),
                            ),
                            child: const Text(
                              'Add 3 Point',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 18),
                            ),
                          ),
                          const Spacer(
                            flex: 12,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 500,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 50,
                        indent: 50,
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: Column(
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                            style: const TextStyle(fontSize: 150),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(buttonNumber: 1, team: 'B');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 142, 10, 160),
                              minimumSize: const Size(150, 60),
                            ),
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 18),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(buttonNumber: 2, team: 'B');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 142, 10, 160),
                              minimumSize: const Size(150, 60),
                            ),
                            child: const Text(
                              'Add 2 Point',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 18),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(buttonNumber: 3, team: 'B');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 142, 10, 160),
                              minimumSize: const Size(150, 60),
                            ),
                            child: const Text(
                              'Add 3 Point',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 18),
                            ),
                          ),
                          const Spacer(
                            flex: 12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).ReturntoZero();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 142, 10, 160),
                    minimumSize: const Size(150, 60),
                  ),
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                  ),
                )
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
