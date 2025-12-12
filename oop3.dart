class BankAccount {
  String accountNumber;
  String accountName;
  double balance;

  BankAccount(this.accountNumber, this.accountName, this.balance);

  double getBalance() {
    return balance;
  }

  void printAccountInfo() {
    print('Account Number: $accountNumber');
    print('Account Name: $accountName');
    print('Balance: $balance');
  }
}

class SavingAccount extends BankAccount {
  double interestRate = 0.12;

  SavingAccount(String accountNumber, String accountName, double balance)
      : super(accountNumber, accountName, balance);

  double getInterest() {
    return balance * interestRate;
  }

  void printSavingInfo() {
    printAccountInfo();
    print('Interest Rate: $interestRate');
    print('Interest Amount: ${getInterest()}');
  }
}

// Checking Account Class
class CheckingAccount extends BankAccount {
  double amount = 0;

  CheckingAccount(String accountNumber, String accountName, double balance)
      : super(accountNumber, accountName, balance);

  void deposit(double money) {
    balance += money;
    amount = money;
    print('Deposited: $money');
    print('New Balance: $balance');
  }

  void withdraw(double money) {
    if (money <= balance) {
      balance -= money;
      amount = money;
      print('Withdrawn: $money');
      print('New Balance: $balance');
    } else {
      print('Not enough balance to withdraw');
    }
  }

  void printCheckingInfo() {
    printAccountInfo();
    print('Last Transaction Amount: $amount');
  }
}

void main() {
  print('=== Regular Bank Account ===');
  BankAccount myAccount = BankAccount('123', 'Ali', 1000);
  myAccount.printAccountInfo();
  print('Current Balance: ${myAccount.getBalance()}');

  print('\n=== Saving Account ===');
  SavingAccount mySaving = SavingAccount('456', 'Mohammed', 5000);
  mySaving.printSavingInfo();
  print('Interest: ${mySaving.getInterest()}');

  print('\n=== Checking Account ===');
  CheckingAccount myChecking = CheckingAccount('789', 'Ahmed', 2000);
  myChecking.printCheckingInfo();

  myChecking.deposit(500);
  myChecking.withdraw(200);
  myChecking.withdraw(3000); // This will fail - not enough balance
  myChecking.printCheckingInfo();
}