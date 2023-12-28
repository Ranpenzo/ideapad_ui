import 'package:flutter/material.dart';
import 'package:ideapad_ui/pages/note_edit.dart';
import 'package:ideapad_ui/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Builder(builder: (context) {
                return SearchBar(
                  leading: IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: const Icon(Icons.menu),
                  ),
                  hintText: 'Search your notes',
                  trailing: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                  ],
                );
              }),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EditNote(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: SizedBox(
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Title",
                                  style: TextStyle(fontSize: 22),
                                ),
                                Text(
                                  "Creation Date",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem ",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.arrow_forward),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
