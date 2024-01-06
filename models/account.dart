class UserSettings {
  String currency = 'USD';
  String language = 'en';
}

class Transaction {
  String category;
  double amount;

  Transaction({required this.category, required this.amount});
}
class Account {
  String name;
  double balance;
  bool isAuthenticated;

  // Adicionei uma validação extra para garantir que o saldo não seja negativo
  Account({
    required this.name,
    required this.balance,
    required this.isAuthenticated,
  })  : assert(name.trim().isNotEmpty, 'O nome não pode ser uma string vazia!'),
        assert(balance >= 0, 'O saldo não pode ser menor que zero!');

  void editBalance({required double value}) {
    balance += value;
  }

  List<Transaction> transactions = [];

  void addTransaction({required String category, required double amount}) {
    transactions.add(Transaction(category: category, amount: amount));
  }

  void printTransactionHistory() {
    for (var transaction in transactions) {
      print('Categoria: ${transaction.category}, Saldo: ${transaction.amount}');
    }
  }

  double budgetGoal = 1000;

  bool isBudgetGoalAchieved() {
    return balance >= budgetGoal;
  }

  UserSettings userSettings = UserSettings();

  void changeCurrency(String newCurrency) {
    userSettings.currency = newCurrency;
  }

  void changeLanguage(String newLanguage) {
    userSettings.language = newLanguage;
  }
}
