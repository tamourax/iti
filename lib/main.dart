import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti/cubit/counter_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Counterscreen()),
    ), // Wrap your app
  );
}

class Counterscreen extends StatelessWidget {
  const Counterscreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0F2027),
                  Color(0xFF203A43),
                  Color(0xFF2C5364),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.info, color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.settings, color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).reset();
                          },
                          icon: Icon(Icons.refresh, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    Text(
                      "${BlocProvider.of<CounterCubit>(context).counter}",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 200,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 111),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<CounterCubit>(context).decrement();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white70,
                                width: 2,
                              ),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '10',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'AVAILABLE',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<CounterCubit>(context).increment();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white70,
                                width: 2,
                              ),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
