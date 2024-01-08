import 'dart:math';

import '../models/account.dart';

void testingNullSafety(){
  Account? myAccount;

  // Simulando uma comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if (randomNumber <= 5){
    myAccount = Account(name: 'ComercialInterno', balance: 200, isAuthenticated: true);
  }

  print(myAccount.runtimeType);

  // if (myAccount != null){
  //   print(myAccount.balance);
  // } else {
  //   print('Conta nula!');
  // }

  print(myAccount != null ? myAccount.balance : 'Conta Nula!');
}