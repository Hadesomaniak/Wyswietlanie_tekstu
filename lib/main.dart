import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: MyCustomForm(),
    ),
  );
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  // Utworzenie obiektu kontrolera
  final myController = TextEditingController();

  @override
  void dispose() {
    // Usunięcie kontrolera z pamięci. Pamiętaj o używaniu Stateful!!!
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TextEditingController", textAlign: TextAlign.center),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: myController,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 15,
                  fontFamily: "Roboto",
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  content: Text("Napisałeś: ${myController.text}")));
        },
        tooltip: 'Increment',
        child: Icon(Icons.create),
      ),
    );
  }
}
