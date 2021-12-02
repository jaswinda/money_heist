import 'package:flutter/material.dart';
import 'package:one_day_before_money_heist/views/screens/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter_ = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter_'),
            ElevatedButton(child: Text('Increament'), onPressed: increament),
            ElevatedButton(
              child: Text('Go to Profile'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profile(
                              name: 'Subharna',
                              counter: counter_,
                              increament: increament,
                            )));
                // Navigator.pushNamed(context, '/profile');
              },
            ),
          ],
        ),
      ),
    );
  }

  increament() {
    counter_++;
    setState(() {});
  }
}
