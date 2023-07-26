import 'package:daryo_uz/instruments/data.dart';
import 'package:daryo_uz/instruments/routes.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('Daryo Uz'),
            bottom: const TabBar(tabs: [
              Tab(child: Text("Asosiy")),
              Tab(child: Text("Asosiy")),
              Tab(child: Text("Asosiy")),
            ]),
          ),
          drawer: Drawer(child: getDrawerChild()),
          body: TabBarView(children: [
            ListView.builder(
                itemCount: list.length,
                itemBuilder: (
                  BuildContext context,
                  int index,
                ) {
                  return card(list[index], context);
                }),
            const Text("2"),
            const Text("this=3")
          ]),
        ),
      ),
    );
  }
}

Widget card(Malumotlar data, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, Names.page, arguments: {"malumot": data});
    },
    child: Container(
      child: Column(
        children: [
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black26,
          ),
          Row(
            children: [
              Text(
                data.type,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 120,
              ),
              Text(data.hours, style: const TextStyle(color: Colors.black26)),
              const Text(
                " | ",
                style: TextStyle(color: Colors.black26),
              ),
              Text(data.days, style: const TextStyle(color: Colors.black26)),
              const Text(
                " | ",
                style: TextStyle(color: Colors.black26),
              ),
              const Icon(
                Icons.remove_red_eye,
                color: Colors.blue,
              ),
              Text(data.seen)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset(data.image),
                    height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 250,
                    child: Text(
                      data.about,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                      maxLines: 4,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

ListView getDrawerChild() {
  return ListView(
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Daryo ",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          const Text(
                            "krilcha   ",
                          ),
                          Container(
                            height: double.infinity,
                            width: 1,
                            color: Colors.white,
                          ),
                          const Text(
                            "   lotincha  ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Toshkent",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.filter_drama,
                      color: Colors.white,
                    ),
                    Text(
                      "+12",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.white,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.euro_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      "1223.34",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.euro_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      "1223.34",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.euro_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      "1223.34",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text("Home"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.account_box),
        title: const Text("About"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.grid_3x3_outlined),
        title: const Text("Products"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.contact_mail),
        title: const Text("Contact"),
        onTap: () {},
      )
    ],
  );
}
