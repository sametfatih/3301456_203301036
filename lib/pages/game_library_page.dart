import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameLibraryPage extends StatelessWidget {
  const GameLibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text('Kullanıcı oyun kütüphanesi gelecek.')),
      ),
    );
  }
}
