import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: SumMulti());
  }
}

class SumMulti extends StatefulWidget {
  const SumMulti({super.key});

  @override
  State<SumMulti> createState() => _SumMultiState();
}

class _SumMultiState extends State<SumMulti> {
  var number = 0;
  TextEditingController fNumber = TextEditingController();
  TextEditingController sNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: fNumber,
            decoration: const InputDecoration(labelText: "First number"),
          ),
          TextField(
            controller: sNumber,
            decoration: const InputDecoration(labelText: "second number"),
          ),
          const SizedBox(
            height: 30,
          ),
          Text("Result:$number"),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    int fnum = int.parse(fNumber.text);
                    int snum = int.parse(sNumber.text);
                    setState(() {
                      number = fnum + snum;
                    });
                  },
                  child: const Text("Sum")),
              ElevatedButton(
                  onPressed: () {
                    int fnum = int.parse(fNumber.text);
                    int snum = int.parse(sNumber.text);
                    setState(() {
                      number = fnum * snum;
                    });
                  },
                  child: const Text("multi")),
              ElevatedButton(
                  onPressed: () {
                    int fnum = int.parse(fNumber.text);
                    int snum = int.parse(sNumber.text);
                    setState(() {
                      number = fnum ~/ snum;
                    });
                  },
                  child: const Text("div")),
              ElevatedButton(
                  onPressed: () {
                    int fnum = int.parse(fNumber.text);
                    int snum = int.parse(sNumber.text);
                    setState(() {
                      number = fnum - snum;
                    });
                  },
                  child: const Text("Sub")),
            ],
          ),
        ],
      ),
    );
  }
}
