import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/routes/routes.dart';
import 'package:provider_test/serives/data_class.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Provider.of<DataClass>(context, listen: false).decreament();
          },
          label: const Text(" - Remove Items")),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Total Items",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  ":",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Consumer<DataClass>(builder: (context, dataclass, child) {
                  return Text(
                    "${dataclass.x}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  );
                })
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, routeHome);
              },
              color: Colors.blue,
              child: const Text("Back To Home"),
            )
          ],
        ),
      ),
    );
  }
}
