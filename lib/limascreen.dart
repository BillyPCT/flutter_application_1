import 'package:flutter/material.dart';

class limascreen extends StatelessWidget {
  final String data;
  const limascreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("layar Kelima"),
        backgroundColor: Colors.green,
      ),
      body: Center(
       
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(data),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Kembali"))
            ],
          ),
        
      ),
    );
  }
}
