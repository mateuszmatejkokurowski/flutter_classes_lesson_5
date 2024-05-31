import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switchValue = false;
  bool _checkboxValue = false;
  String _radioValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI Controls Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton pressed');
              },
              child: const Text('ElevatedButton'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                print('TextButton pressed');
              },
              child: const Text('TextButton'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton pressed');
              },
              child: const Text('OutlinedButton'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Switch: '),
                Switch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Checkbox: '),
                Checkbox(
                  value: _checkboxValue,
                  onChanged: (value) {
                    setState(() {
                      _checkboxValue = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('RadioButtons:'),
                ListTile(
                  title: const Text('Option 1'),
                  leading: Radio<String>(
                    value: 'Option 1',
                    groupValue: _radioValue,
                    onChanged: (String? value) {
                      setState(() {
                        _radioValue = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Option 2'),
                  leading: Radio<String>(
                    value: 'Option 2',
                    groupValue: _radioValue,
                    onChanged: (String? value) {
                      setState(() {
                        _radioValue = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Option 3'),
                  leading: Radio<String>(
                    value: 'Option 3',
                    groupValue: _radioValue,
                    onChanged: (String? value) {
                      setState(() {
                        _radioValue = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
