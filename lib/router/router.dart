import 'package:crypto_currency/feauters/crypto_list/crypto_list.dart';

import '../feauters/crypto_coin/crypto_coin.dart';

final routes = {
  '/':(context) => CryptoListScreen(title: '',),
      '/coin':(context) => CryptoCoinScreen(),
};