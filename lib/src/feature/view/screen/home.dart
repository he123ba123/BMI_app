import 'package:app_two/src/feature/view/widget/appbar.dart';
import 'package:app_two/src/feature/view/widget/textfield.dart';
import 'package:flutter/material.dart';

final TextEditingController name = TextEditingController();
final TextEditingController id = TextEditingController();
final TextEditingController email = TextEditingController();
// GlobalKey <
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                sufix: const Icon(Icons.remove),
                prefix: const Icon(Icons.person), textInputType: TextInputType.name,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                  child: textFormField(
                label: 'ID *',
                controller: id,
                hint: 'please enter you name',
                sufix: const Icon(Icons.remove),
                prefix: const Icon(Icons.numbers), textInputType: TextInputType.number,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                  child: textFormField(
                label: 'email',
                controller: id,
                hint: 'please enter you email',
                sufix: const Icon(Icons.remove),
                prefix: const Icon(Icons.email), textInputType: TextInputType.text,
              )),
            ),
            IconButton(
              onPressed: () {},
              icon: const Text(
                "Submit",
                style: TextStyle(fontSize: 20),
              ),
              color: const Color.fromARGB(255, 7, 111, 196),
            )
          ],
        ),
      ),
    );
  }
}
