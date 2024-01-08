import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
    id: "ComercialInterno",
    account: Account(name: "ComercialInterno", balance: 1000, isAuthenticated: true),
  );
  bankController.addAccount(
    id: "Financeiro",
    account: Account(name: "Financeiro", balance: 1000, isAuthenticated: true),
  );

  // Acessando a conta ComercialInterno
  Account commercialAccount = bankController.getAccountById("ComercialInterno");
  // Editando o saldo da conta ComercialInterno
  commercialAccount.editBalance(value: 200);

  // Adicionando transações à conta ComercialInterno
  commercialAccount.addTransaction(category: 'Vendas', amount: 500);
  commercialAccount.addTransaction(category: 'Despesas', amount: -300);

  // Visualizando o histórico de transações da conta ComercialInterno
  print('Histórico de Transações da Conta ComercialInterno:');
  commercialAccount.printTransactionHistory();

  // Verificando se a meta orçamentária da Conta ComercialInterno foi alcançada
  print('A meta orçamentária foi alcançada? ${commercialAccount.isBudgetGoalAchieved()}');

  // Mudando a moeda nas configurações da Conta ComercialInterno
  commercialAccount.changeCurrency('BRL');

  // Mudando o idioma nas configurações da Conta ComercialInterno
  commercialAccount.changeLanguage('pt-br');

  // Fazendo uma transferência entre Conta ComercialInterno e Financeiro
  try {
    bool result = bankController.makeTransfer(
      idSender: "ComercialInterno",
      idReceiver: "Financeiro",
      amount: 900,
    );



    // Observando resultado
    if (result) {
      print('Transação concluída com sucesso!');
    }
  } on SenderIdInvalidException catch (e) {
    print(e);
  } on ReceiverIdInvalidException catch (e) {
    print(e);
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
  } on ReceiverNotAuthenticatedException catch (e) {
    print(e);
  } on SenderLowerBalanceThanAmountException catch (e) {
    print(e);
  } on Exception {
    print('Algo deu errado!');
  }
}



