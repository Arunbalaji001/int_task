import 'package:flutter/material.dart';
import 'package:inttask/components/button_widget.dart';
import 'package:inttask/components/qr_generator_widget.dart';
import 'package:inttask/components/scanner_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isScan = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QR App',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
              children: [
                ButtonWidget(
                    name: 'Scan', onTapped: () {
                    setState((){isScan = true;});
                    },),
                ButtonWidget(
                  name: 'Create', onTapped: () {
                  setState((){isScan = true;});
                },),
              ],
            ),
            isScan?
            const ScannerWidget():
                const QrGeneratorWidget(),
          ],
        ),
      ),
    );
  }
}
