import 'package:crypto_currency/feauters/repositories/crypto_coins/models/crypto_coin_model.dart';
import 'package:dio/dio.dart';



class CryptoCoinsRepository{
  Future<List<CryptoCoin>> getCoinsList() async{
    final response = await Dio().get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AID,ABT,ABYSS,SOL,CAG,DOV&tsyms=USD'
      ); //get - метод для взаимодействия с сетью
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data ['RAW'] as Map<String, dynamic>;
    // ignore: non_constant_identifier_names
    final CryptoCoinsList = dataRaw.entries
    .map((e) {
      final usdData = (e.value as Map<String, dynamic>) ['USD'] as Map<String, dynamic>; 
      final price = usdData ['PRICE'];
      final imageUrl = usdData ['IMAGEURL']; //Словари ['PRICE'], ['IMAGEURL'] и т.д. берутся с API
      return CryptoCoin(
      name: e.key, 
      priceInUSD:  price,
      imageUrl: 'https://www.cryptocompare.com/' + imageUrl,
      );})
      .toList();
    
    return CryptoCoinsList;
  } // асинхронный метод - это метод, который никогда не закончится
}