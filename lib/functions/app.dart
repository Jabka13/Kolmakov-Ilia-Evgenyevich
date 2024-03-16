import 'package:flutter/material.dart';
import 'package:social_network/UI/home_page.dart';

class DropdownMenuApp extends StatelessWidget {
  const DropdownMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Handposter 0.2',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text('Handposter 0.2'),
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
                      backgroundImage: AssetImage(
                        'assets/images/valeriy_tavo.jpg',
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