import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {

@override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    if(args == null){
      print('You must provide args!');
      return;
    }
    if(args is! String){
      print('You must provide string args!');
      return;
    }
    coinName = args;
    super.didChangeDependencies();
    setState(() {});
  }

  String? coinName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(coinName ??'...')),
    );
  }
}