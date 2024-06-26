import 'package:flutter/material.dart';
import 'package:taskbloc/widgets/flincap.dart';

class FlincapAccount extends StatefulWidget {
  const FlincapAccount({Key? key}) : super(key: key);

  @override
  _FlincapAccountState createState() => _FlincapAccountState();
}

class _FlincapAccountState extends State<FlincapAccount> {
  TextEditingController _flincapUsernameController = TextEditingController();
  TextEditingController _flincapPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Link Flincap Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _flincapUsernameController,
              decoration: InputDecoration(
                labelText: 'Flincap Username',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _flincapPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => const Flincap(),
                  ),
                );
              },
              child: Text('Link Account'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _flincapUsernameController.dispose();
    _flincapPasswordController.dispose();
    super.dispose();
  }
}
