import 'package:flutter/material.dart';
import 'package:test_adaptive_ui/widgets/card.dart';

import '../models/project.dart';

class HomeScreenApp extends StatelessWidget {
  final double cardSize;
  final int crossAxisCount;

  const HomeScreenApp({
    super.key,
    required this.cardSize,
    required this.crossAxisCount,
  });

  @override
  Widget build(BuildContext context) {
    List<Project> projects = [
      Project(title: "Savva", color: Colors.red.shade300),
      Project(title: "Olluka", color: Colors.pink.shade300),
      Project(title: "Loona", color: Colors.indigo.shade300),
      Project(title: "Folk", color: Colors.blue.shade300),
      Project(title: "White Rabbit", color: Colors.cyan.shade300),
      Project(title: "Sage", color: Colors.green.shade300),
      Project(title: "Maya", color: Colors.amber.shade300),
      Project(title: "Jun", color: Colors.orange.shade300),
      Project(title: "Onest", color: Colors.purple.shade300),
      Project(title: "Probka на цветном", color: Colors.blue.shade300),
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        actions: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                      const Text(
                        "Рабочие пространства",
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 20, left: 8.0, right: 8.0),
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: TextField(
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                          hintText: "Поиск",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.white24),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white24,
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                childAspectRatio: 1.6,
              ),
              itemCount: 10,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return TestCard(
                  size: cardSize,
                  cardName: projects[index].title,
                  cardColor: projects[index].color,
                );
              },
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
