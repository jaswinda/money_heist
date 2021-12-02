import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final int counter;
  final increament;
  final String name;
  const Profile(
      {Key? key, required this.counter, required this.name, this.increament})
      : super(key: key);

  @override
  State<Profile> createState() => _ProfileState(this.counter);
}

class _ProfileState extends State<Profile> {
  int counter_;

  _ProfileState(this.counter_);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times: ${counter_}',
            ),
            ElevatedButton(
              onPressed: increament,
              child: Text('Press me'),
            ),
          ],
        ),
      ),
    );
  }

  increament() {
    counter_++;
    setState(() {});
    widget.increament();
  }
}
