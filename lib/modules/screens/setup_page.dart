import 'package:flutter/material.dart';

enum babyGender { boy, girl, surprise }

class SetupPage extends StatefulWidget {
  @override
  _SetupPageState createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  babyGender _gender = babyGender.boy;
  String _lastName;
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Baby Naming App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Setup Page"),
            SizedBox(
              height: 25,
            ),
            Text('What\'s your babies gender?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                genderRadio(babyGender.boy, 'Boy'),
                genderRadio(babyGender.girl, 'Girl'),
                genderRadio(babyGender.surprise, 'Surprise'),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text('What\'s your babies last name?'),
            TextField(
              controller: _controller,
              onChanged: (value) {
                _lastName = value;
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/invite');
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }

  Row genderRadio(babyGender _genderValue, String _genderText) {
    return Row(
      children: [
        Radio(
          value: _genderValue,
          groupValue: _gender,
          onChanged: (babyGender value) {
            setState(() {
              _gender = value;
            });
          },
        ),
        Text(_genderText),
      ],
    );
  }
}
