import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetListPage(),
    );
  }
}

class WidgetListPage extends StatefulWidget {
  const WidgetListPage({Key? key}) : super(key: key);
  @override
  State<WidgetListPage> createState() => _WidgetListPageState();
}

class _WidgetListPageState extends State<WidgetListPage> {
  List<String> names = ["Mansi", "Riddhi", "Smit", "Rahul"];
  List<String> alp = ["A", "B", "c"];
  List<int> numbers = List.generate(10, (index) => index + 10);
  @override
  void initState() {
    for (String item in alp) {
      names.add(item);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
          title: const Text(
            "DEMO APP",
            textDirection: TextDirection.ltr,
          ),
          backgroundColor: Colors.amberAccent),
      body: Column(
        children: [
          SizedBox(
            height: 140,
            child: ListView.builder(
              itemCount: numbers.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  margin: const EdgeInsets.only(left: 8),
                  child: Card(
                    elevation: 6,
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.amber, shape: BoxShape.circle),
                          height: 70,
                          width: 70,
                        ),
                        Expanded(child: Text(numbers[index].toString()))
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
