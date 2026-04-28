import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ListUserDataPage());
  }
}

class ListUserDataPage extends StatefulWidget {
  const ListUserDataPage({super.key});

  @override
  State<ListUserDataPage> createState() => _ListUserDataPageState();
}

class _ListUserDataPageState extends State<ListUserDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User List")),
      body: ListView.builder(
        
        itemCount: 15,
        itemBuilder: (cxt, i) =>
            ListTile(title: Text("Nama"), subtitle: Text("umur: 14 tahun"), trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(onPressed: () => {}, child: Icon(Icons.edit)),
                TextButton(onPressed: () => {}, child: Icon(Icons.delete)),
                ],
            )
          ),
      )
      floatingActionButton: FloatingActionButton(
        onPressed: () => {}, 
        child: Icon(Icons.add),
      ),
    );
  }
}
