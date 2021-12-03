import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
class LocalizationPage extends StatefulWidget {
  const LocalizationPage({Key? key}) : super(key: key);

  @override
  _LocalizationPageState createState() => _LocalizationPageState();
}

class _LocalizationPageState extends State<LocalizationPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    Center(
    child:  Text(
    'hi_guys',
    style: TextStyle(fontSize: 25),
    ).tr(args:["Local"]),
    ),
    Center(
    child: const Text(
    'from_livdev',
    style: TextStyle(fontSize: 25),
    ).tr(args: ["Local"]),
    ),
    Center(
    child: const Text(
    'please_subscribe',
    style: TextStyle(fontSize: 25),
    ).tr(args: ["Local"]),
    ),
    const SizedBox(height: 20),
    TextButton(
    onPressed: () {

      setState(() {
       // counter++;


        context.setLocale(const Locale("en", "US"));

    });
    },
    child: const Text('Change to english'),
    ),
    const SizedBox(height: 20),
    TextButton(
    onPressed: () {
    setState(() {
      //counter++;

      context.setLocale( Locale("es", "US"));
    });              },
    child: const Text('Change to spanish'),
    ),
    const SizedBox(height: 20),
    TextButton(
    onPressed: () {
    setState(() {
      //counter++;

      context.setLocale(const Locale("hi", "IN"));

    });
    },
    child: const Text('Change to Hindi'),
    ),
    const SizedBox(height: 20),
    TextButton(
    onPressed: () {
    setState(() {
      //counter++;
    context.setLocale(const Locale("ur","PK"));

    });
    },
    child: const Text('Change to Urdu'),
    ),
    ],
    ),
    );

    }
}
