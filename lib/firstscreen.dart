import 'package:flutter/material.dart';
import 'package:flutter_application_1/secondscren.dart';
import 'package:flutter_application_1/threescreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  Future<void> _NavigateScreen(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => threescreen()));

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar Pertama'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            secondscreen(data: 'Data dari First Screen')));
              },
              child: Text('Menuju Kelayar Kedua'),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  _NavigateScreen(context);
                },
                child: Text('Menuju Layar Ketiga')),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/fourth');
                },
                child: Text("menuju layar ke empat"))
          ],
        ),
      ),
    );
  }
}
