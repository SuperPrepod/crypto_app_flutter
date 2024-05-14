import 'package:crypto_currency/feauters/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:crypto_currency/feauters/repositories/crypto_coins/models/crypto_coin_model.dart';
import 'package:crypto_currency/feauters/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});
  final String title;
  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {

  List<CryptoCoin>? _CryptoCoinsList;

@override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Currencies List'),
      ),
      body: (_CryptoCoinsList == null) 
      ? const Center(child: const CircularProgressIndicator(color: Colors.yellow,)): //Кружок загрузки
      ListView.separated(
        padding: const EdgeInsets.only(top: 16), //Отступ от верха
        separatorBuilder: (context, index) => const Divider(), //рисует полоску разделения  
        itemCount: _CryptoCoinsList!.length,
        itemBuilder: (context, i) {
          final coin = _CryptoCoinsList![i];
        return CryptoCoinTile(coin: coin);
        }, 
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.download),
      //   onPressed: () async{
      //   await _loadCryptoCoins();
      // }, ),
    );
  }

  Future<void> _loadCryptoCoins() async {
          _CryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
    setState(() {});
  }
}

