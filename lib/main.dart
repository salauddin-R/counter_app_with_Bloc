import 'package:counter_with_block/block/counterBlock.dart';
import 'package:counter_with_block/createScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(create: (context)=>Counterblock(),child: MyApp(),)
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const createScreen(),
    );
  }
}
