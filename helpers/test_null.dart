import 'dart:math';

import '../models/account.dart';

void testingNullSafety(){
  Account? myAccount;

  // Simulando uma comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if (randomNumber <= 5){
<<<<<<< HEAD
    myAccount = Account(name: 'Ricarth', balance: 200, isAuthenticated: true);
=======
    myAccount = Account(name: 'ComercialInterno', balance: 200, isAuthenticated: true);
>>>>>>> 86342e45a4c589420083abcd2a902662325fe8d6
  }

  print(myAccount.runtimeType);

  // if (myAccount != null){
  //   print(myAccount.balance);
  // } else {
  //   print('Conta nula!');
  // }

  print(myAccount != null ? myAccount.balance : 'Conta Nula!');
}