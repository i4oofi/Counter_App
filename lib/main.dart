import 'package:counter_app/bloc/counter_bloc.dart';
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
      create: (context) => CounterBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, CounterState>(
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
                          BlocBuilder<CounterBloc, CounterState>(
                            builder: (context, state) {
                              if (state is TeamIncreament) {
                                return Text(
                                  '${state.teamA}',
                                  style: const TextStyle(
                                    fontSize: 150,
                                  ),
                                );
                              }
                              return const Text('Start the game',
                                  style: TextStyle(fontSize: 20));
                            },
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<CounterBloc>().add(
                                  TeamIncreamentEvent(points: 1, team: 'A'));
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
                              context.read<CounterBloc>().add(
                                  TeamIncreamentEvent(points: 2, team: 'A'));
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
                              context.read<CounterBloc>().add(
                                  TeamIncreamentEvent(points: 3, team: 'A'));
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
                          BlocBuilder<CounterBloc, CounterState>(
                            builder: (context, state) {
                              if (state is TeamIncreament) {
                                return Text(
                                  '${state.teamB}',
                                  style: TextStyle(fontSize: 150),
                                );
                              }
                              return const Text('Start the game',
                                  style: TextStyle(fontSize: 20));
                            },
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<CounterBloc>().add(
                                  TeamIncreamentEvent(points: 1, team: 'B'));
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
                              context.read<CounterBloc>().add(
                                  TeamIncreamentEvent(points: 2, team: 'B'));
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
                              context.read<CounterBloc>().add(
                                  TeamIncreamentEvent(points: 3, team: 'B'));
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
                    context.read<CounterBloc>().add(ResetEvent());
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
