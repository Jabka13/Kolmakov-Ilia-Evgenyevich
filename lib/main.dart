import 'package:flutter/material.dart';

const List<String> list = <String>['OK', 'Bad', 'Bananas', "Vsem privet, I tolyko chto prosnulsya"];

void main() => runApp(const DropdownMenuApp());

class DropdownMenuApp extends StatelessWidget {
  const DropdownMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Handposter 0.1',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text('Handposter 0.1'),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
          body: const Center(
            child: Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '=',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ), //Menu Icon(menu will be implemented later)
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Zhmyshenko Valeriy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 50
                      ),
                    ), // Full Name
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://source.unsplash.com/50x50/?portrait',
                      ),
                    ), // Tvoya ava
                    Text(
                      'Choose your status today:',
                    ),
                    DropdownMenuExample()// Magic in the status,
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {

    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}