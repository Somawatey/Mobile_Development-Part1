class BankAccount {
  // TODO
  int accountId;
  String accountOwner;
  String DOB;
  String address;
  double _balance;
  BankAccount(
      this.accountId, this.accountOwner, this.DOB, this.address, this._balance);

  double get balance => _balance;

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print(
          'Your credit have cut amount: $amount with the new balance: $_balance');
    } else {
      print('Insufficient balance. Cannot withdraw \$${amount}!');
    }
  }

  void credit(double amount) {
    _balance += amount;
    print('You have added \$${amount} so your new balance: \$${_balance}');
  }

  @override
  String toString() {
    return "Id: $accountId,accountowner: $accountOwner, DOB: $DOB, Address: $address,Balance: \$$_balance";
  }
}

class Bank {
  // TODO
  String bankName;
  String location;
  // String accountName;
  List<BankAccount> accounts = [];
  Bank(this.bankName, this.location);

  BankAccount createAccount(int accountId, String accountOwner, String DOB, String address) {
    for (var account in accounts) {
      if (account.accountId == accountId) {
        throw Exception('Account with ID $accountId already exists!');
      }
    }

    BankAccount newAccount = BankAccount(accountId, accountOwner, DOB, address, 0.0);
    accounts.add(newAccount);
    print('Account created successfully for $accountOwner!');
    return newAccount;
  }
}

void main() {
  Bank myBank = Bank("CADT Bank", "PP");
  BankAccount AccountOwner =
      myBank.createAccount(100, 'somawatey', '01-11-24', 'PP');
  print("Initial balance: \$${AccountOwner.balance}");
  // print(AccountOwner.balance); // Balance: $0
  AccountOwner.credit(100);
  // print(AccountOwner.balance); // Balance: $100
  AccountOwner.withdraw(50);
  //print(AccountOwner.balance); // Balance: $50

  try {
    AccountOwner.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy', '11-11-2014', 'PP'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
