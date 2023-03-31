// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: _ReuseableCard(
                    colour: const Color(0xff1d1e33),
                  ),
                ),
                Expanded(
                  child: _ReuseableCard(colour: const Color(0xff1d1e33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: _ReuseableCard(colour: const Color(0xff1d1e33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: _ReuseableCard(colour: const Color(0xff1d1e33)),
                ),
                Expanded(
                  child: _ReuseableCard(colour: const Color(0xff1d1e33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ReuseableCard extends StatelessWidget {
  const _ReuseableCard({
    Key? key,
    required this.colour,
  }) : super(key: key);

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
