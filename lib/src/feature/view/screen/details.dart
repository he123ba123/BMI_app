import 'package:app_two/src/feature/view/widget/appbar.dart';
import 'package:app_two/src/feature/view/widget/textfield.dart';
import 'package:flutter/material.dart';

final TextEditingController name = TextEditingController();

// ignore: camel_case_types
class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _MainPageState();
}

class _MainPageState extends State<details> {
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
                controller: name,
                hint: 'please enter you age',
                sufix: IconButton(
                    onPressed: () {
                      name.clear();
                    },
                    icon: const Icon(Icons.remove)),
                prefix: const Icon(Icons.assignment_ind_sharp),
                textInputType: TextInputType.number,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: () {
//               Navigator.of(context).pushReplacement(MaterialPageRoute(
//               builder: (context) => MainPage(),
//             ));
                },
                child: const Text('Return'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
