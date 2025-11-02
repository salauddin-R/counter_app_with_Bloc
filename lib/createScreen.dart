import 'package:counter_with_block/block/CounterState.dart';
import 'package:counter_with_block/block/Counter_Event.dart';
import 'package:counter_with_block/block/counterBlock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class createScreen extends StatelessWidget {
  const createScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App with Block")),
      body: Center(
        child: BlocBuilder<Counterblock, Counterstate>(
          builder: (context, state) {
            return Text(
              "Count:${state.count}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<Counterblock>().add(Increment());
            },
            elevation: 10,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              context.read<Counterblock>().add(Decrement());
            },
            elevation: 10,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
