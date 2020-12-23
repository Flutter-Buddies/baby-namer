import 'package:flutter/material.dart';

class OptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Baby Naming App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Options page"),
              OriginDropdown(),
              TextFormField(
                maxLength: 1,
                decoration: InputDecoration(labelText: "Starting letter"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Prefix"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Sufix"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Includes"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Text("Popularity"),
                    PopularitySlider(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/swipe');
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class PopularitySlider extends StatefulWidget {
  const PopularitySlider({
    Key key,
  }) : super(key: key);

  @override
  _PopularitySliderState createState() => _PopularitySliderState();
}

class _PopularitySliderState extends State<PopularitySlider> {
  double currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: currentSliderValue,
      min: 0,
      max: 9,
      divisions: 3,
      label: sliderLabel(currentSliderValue.round()),
      onChanged: (double value) {
        setState(() {
          currentSliderValue = value;
        });
      },
    );
  }
}

class OriginDropdown extends StatefulWidget {
  const OriginDropdown({
    Key key,
  }) : super(key: key);

  @override
  _OriginDropdownState createState() => _OriginDropdownState();
}

class _OriginDropdownState extends State<OriginDropdown> {
  var origins = [
    "American",
    "German",
    "Italian",
    "Japanese",
    "Russian",
    "Spanish",
  ].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  var dropdownValue = "";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: origins,
      decoration: InputDecoration(
        labelText: 'Origin',
      ),
      onChanged: (String value) {
        setState(() {
          dropdownValue = value;
        });
      },
    );
  }
}

String sliderLabel(int sliderValue) {
  switch (sliderValue) {
    case 0:
      {
        return "Unpopular 😐";
      }
    case 3:
      {
        return "Normal 😊";
      }
    case 6:
      {
        return "Popular 😎";
      }
    case 9:
      {
        return "Superstar 🤩";
      }
    default:
      {
        return "";
      }
  }
}
