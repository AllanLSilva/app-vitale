class SenderIdInvalidException implements Exception {
  static const String report = 'SenderIdInvalidException';
  String idSender;
  SenderIdInvalidException({ required this.idSender});

  @override
  String toString(){
    return "$report\nId Sender: $idSender.";
  }
}
class ReceiverIdInvalidException implements Exception {
  static const String report = 'ReceiverIdInvalidException';
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString(){
    return "$report\nId Receiver: $idReceiver.";
  }
}
class SenderNotAuthenticatedException implements Exception {
  static const String report = 'SenderNotAuthenticatedException';
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString(){
    return "$report\nId Sender: $idSender.";
  }
}
class ReceiverNotAuthenticatedException implements Exception {
  static const String report = 'ReceiverNotAuthenticated';
  String idReceiver;
  ReceiverNotAuthenticatedException({required this.idReceiver});

  @override
  String toString(){
    return "$report\nId Receiver: $idReceiver.";
  }

}
class SenderLowerBalanceThanAmountException implements Exception {
  static const String report = 'SenderLowerBalanceThanAmountException';
  String idSender;
  double senderBalance;
  double amount;
  SenderLowerBalanceThanAmountException(
      {required this.idSender, required this.senderBalance, required this.amount}
      );

  @override
  String toString(){
    return "$report\nId Receiver: $idSender\nSender Balance: $senderBalance\nAmount: $amount";
  }
}