import 'package:app_two/src/feature/view/widget/appbar.dart';
import 'package:app_two/src/feature/view/widget/textfield.dart';
import 'package:flutter/material.dart';

final TextEditingController name = TextEditingController();
final TextEditingController date = TextEditingController();

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBarHome(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                  child: textFormField(
                label: 'Name *',
                controller: name,
                hint: 'please enter you name',
                sufix: IconButton(
                    onPressed: () {
                      name.clear();
                    },
                    icon: const Icon(Icons.remove)),
                prefix: const Icon(Icons.person),
                textInputType: TextInputType.name,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                  child: textFormField(
                label: 'Birth date *',
                controller: date,
                hint: 'please enter you birth date',
                sufix: IconButton(
                    onPressed: () {
                      date.clear();
                    },
                    icon: const Icon(Icons.remove)),
                prefix: const Icon(Icons.date_range),
                textInputType: TextInputType.number,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {},
                child: const Text('Data show '),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {},
                child: const Text('Go'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
