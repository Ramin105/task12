class BankAccount {
  String accountNumber;
  String accountOwner;
  double balance;

  BankAccount(this.accountNumber, this.accountOwner, this.balance);

  printAccountInfo() {
    print('Hesab nomresi: $accountNumber');
    print('Hesab Sahibi: $accountOwner');
    print('Balans: $balance');
  }

  deposit(double amount) {
    balance += amount;
    print('Depozit $amount olundu.');
    print('Yeni balans: $balance');
  }

  withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('Hesabdan $amount cixarildi.');
      print('Yeni balans: $balance');
    } 
    
  }
}

main() {
  BankAccount myAccount = BankAccount('1234567890', 'Johy', 1000.0);
  
  myAccount.printAccountInfo();
  myAccount.deposit(500.0);
  myAccount.withdraw(200.0);
}