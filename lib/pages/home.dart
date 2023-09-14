import 'package:flutter/material.dart';
import 'package:bmkg_api_app/api/get_wilayah.dart';
import 'package:bmkg_api_app/models/respon_list_wilayah.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fredo App')),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.all(12.0),
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 73, 133),
              borderRadius: BorderRadius.circular(12.0)),
          child: LocationDropdown(),
        ),
        Container(
          child: Text("Test Text"),
        )
      ]),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// LOCATION CHOICES DROPDOWN SIDE
class LocationDropdown extends StatefulWidget {
  const LocationDropdown({super.key});

  @override
  State<LocationDropdown> createState() => _LocationDropdownState();
}

class _LocationDropdownState extends State<LocationDropdown> {
  GetWilayah fetchListWilayah = GetWilayah();
  ResponListWilayah listWilayah =
      ResponListWilayah(author: "Fredo Ronan", message: List.empty());
  List<String> list = [];
  String selectedValue = "";

  getDataWilayah() async {
    listWilayah = await fetchListWilayah.getDataWilayah();
    list = listWilayah.message;
    selectedValue = list.first;

    setState(() {
      // ReDraw the Widget UI
    });
  }

  // For initialization of the UI
  @override
  void initState() {
    getDataWilayah();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.5), // Adjust the padding as needed
      color: const Color.fromARGB(
          255, 0, 73, 133), // You can change the background color
      child: Row(
        children: [
          Expanded(
            child: DropdownButton<String>(
              isExpanded: true,
              value: selectedValue,
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: Colors.white, // You can change the text color
                    ),
                  ),
                );
              }).toList(),
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
              iconSize: 24.0,
              dropdownColor: const Color.fromARGB(
                  255, 21, 113, 188), // Dropdown background color
              elevation: 16,
              style: const TextStyle(
                color: Colors.white, // Dropdown text color
              ),
              underline: Container(), // Removes the underline
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// FORECAST SHOW SIDE
class ForecastList extends StatefulWidget {
  const ForecastList({super.key});

  @override
  State<ForecastList> createState() => _ForecastListState();
}

class _ForecastListState extends State<ForecastList> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
