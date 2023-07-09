import 'package:daryo_uz/instruments/data.dart';
import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Malumotlar>;
    final Malumotlar malumotlar = args['malumot']!;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Daryo Yangiliklari"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(malumotlar.fullDataImage),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  malumotlar.fullData,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
