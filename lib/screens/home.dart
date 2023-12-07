import 'dart:math';

import 'package:flutter/material.dart';

import 'package:notes_app/screens/add_note.dart';
import 'package:notes_app/screens/edit_note.dart';

import '../models/note.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.note,
  });

  final Note note;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Color> circleColors = [
    const Color.fromARGB(255, 114, 78, 120),
    Colors.blue,
    const Color.fromARGB(255, 112, 128, 65),
    const Color.fromARGB(255, 120, 78, 78),
    const Color.fromARGB(255, 105, 105, 105),
  ];

  Color randomGenerator() {
    return circleColors[Random().nextInt(5)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[200],
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (ctx) => const AddNote()));
        },
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 25, 25, 25),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 10, top: 10),
                  child: Icon(
                    Icons.dashboard_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),

                const Text(
                  'Notes',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                const SizedBox(
                  width: 190,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(126, 55, 55, 55),
                      borderRadius: BorderRadius.circular(13)),
                  child: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                )

                // )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const EditNote()));
                    },
                    child: Card(
                      color: randomGenerator(),
                      child: const Column(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Title',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 260,
                              ),
                              Icon(
                                Icons.bookmark,
                                size: 30,
                                color: Colors.yellow,
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          title: Text('Content'),
                          subtitle: Text('6 Dec 2023, 05:52 PM'),
                          trailing: Icon(
                            Icons.delete_sweep,
                            size: 30,
                            color: Color.fromARGB(255, 48, 48, 48),
                          ),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.black,
                          size: 25,
                        )
                      ]),
                    )),
                InkWell(
                    onTap: () {},
                    child: Card(
                      color: randomGenerator(),
                      child: const Column(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Title',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 260,
                              ),
                              Icon(
                                Icons.bookmark,
                                size: 30,
                                color: Colors.yellow,
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          title: Text('Content'),
                          subtitle: Text('6 Dec 2023, 05:52 PM'),
                          trailing: Icon(
                            Icons.delete_sweep,
                            size: 30,
                            color: Color.fromARGB(255, 48, 48, 48),
                          ),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.black,
                          size: 25,
                        )
                      ]),
                    )),
                InkWell(
                    onTap: () {},
                    child: Card(
                      color: randomGenerator(),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                note.title,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 260,
                              ),
                              const Icon(
                                Icons.bookmark,
                                size: 30,
                                color: Colors.yellow,
                              )
                            ],
                          ),
                        ),
                        const ListTile(
                          title: Text('Content'),
                          subtitle: Text('6 Dec 2023, 05:52 PM'),
                          trailing: Icon(
                            Icons.delete_sweep,
                            size: 30,
                            color: Color.fromARGB(255, 48, 48, 48),
                          ),
                        ),
                        const Icon(
                          Icons.expand_more,
                          color: Colors.black,
                          size: 25,
                        )
                      ]),
                    )),
                InkWell(
                    onTap: () {},
                    child: Card(
                      color: randomGenerator(),
                      child: const Column(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Title',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 260,
                              ),
                              Icon(
                                Icons.bookmark,
                                size: 30,
                                color: Colors.yellow,
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          title: Text('Content'),
                          subtitle: Text('6 Dec 2023, 05:52 PM'),
                          trailing: Icon(
                            Icons.delete_sweep,
                            size: 30,
                            color: Color.fromARGB(255, 48, 48, 48),
                          ),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.black,
                          size: 25,
                        )
                      ]),
                    )),
                InkWell(
                    onTap: () {},
                    child: Card(
                      color: randomGenerator(),
                      child: const Column(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Title',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 260,
                              ),
                              Icon(
                                Icons.bookmark,
                                size: 30,
                                color: Colors.yellow,
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          title: Text('Content'),
                          subtitle: Text('6 Dec 2023, 05:52 PM'),
                          trailing: Icon(
                            Icons.delete_sweep,
                            size: 30,
                            color: Color.fromARGB(255, 48, 48, 48),
                          ),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.black,
                          size: 25,
                        )
                      ]),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
