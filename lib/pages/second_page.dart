import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
static const String id='second_page';
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Localization',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(

                  child: const Text(
                    'Welcome',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ).tr(),
                )),
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          onPrimary: Colors.white,
                        ),
                        child: const Text('Korean'),
                        onPressed: () {
                          context.setLocale(const Locale('ko', 'KO'));
                        },
                      ),
                    )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightGreen,
                          onPrimary: Colors.white,
                        ),
                        child: const Text('Japanese'),
                        onPressed: () {
                          context.setLocale(const Locale('ja', 'JA'));
                        },
                      ),
                    )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow,
                          onPrimary: Colors.white,
                        ),
                        child: const Text('English'),
                        onPressed: () {
                          context.setLocale(const Locale('en', 'US'));
                        },
                      ),
                    )),

              ],
            )
          ],
        ),
      ),
    );
  }
}
