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
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Daryo Uz'),
        ),
        drawer: Drawer(child: getDrawerChild()),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return card(list[index], context);
            }),
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
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 120,
              ),
              Text(data.hours, style: TextStyle(color: Colors.black26)),
              Text(
                " | ",
                style: TextStyle(color: Colors.black26),
              ),
              Text(data.days, style: TextStyle(color: Colors.black26)),
              Text(
                " | ",
                style: TextStyle(color: Colors.black26),
              ),
              Icon(
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: NetworkImage(
              "https://daryo.uz/static/2023/07/thumb-64a8fbc0da5f0.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 8.0,
              left: 4.0,
              child: Text(
                "Daryo Uz",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.account_box),
        title: Text("About"),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.grid_3x3_outlined),
        title: Text("Products"),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.contact_mail),
        title: Text("Contact"),
        onTap: () {},
      )
    ],
  );
}
