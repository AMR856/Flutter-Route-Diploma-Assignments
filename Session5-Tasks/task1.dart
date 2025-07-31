import 'dart:io';

class BankAccount{

  static int currentId = 1;
  late int accountID;
  late int balance;

  // Parameterized constructor
  BankAccount.paramConstructor(this.balance){
    this.accountID = currentId;
    currentId++;
  }

  // Constructor delegation
  BankAccount() : this.paramConstructor(0);

  bool withdraw(int amount){
    if (amount < 0) return false;
    if (this.balance - amount >= 0) {
      this.balance -= amount;
      return true;
    } else return false;
  }
  bool deposit(int amount){
    if (amount < 0) return false;
    this.balance += amount;
    return true;
  }
}

void main(){
  BankAccount account1 = BankAccount();
  account1.deposit(-5);
  account1.deposit(20);
  account1.withdraw(5);
  print(account1.balance);
  print(account1.accountID);
  BankAccount account2 = BankAccount.paramConstructor(100);
  print(account2.accountID);
  print(account2.balance);
}