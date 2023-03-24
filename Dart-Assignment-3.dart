Q1)  Create a Vehicle class with brand model and year properties and a method called drive() that prints a message indicating that the vehicle is being driven. then create a car class that inherits from vehicle and has a numberdoors property. override the drive() method in the car class to print a message that includes the number of doors.

Answer

class Vehicle {
  String brand="null";
  String model="null";
  int year=0000;
  
  void drive() {
    print("The  ${brand} ${year} ${model} is being driven.");
  }
}

class Car extends Vehicle {
  int numDoors=00;
  
  @override
  void drive() {
    print("the ${brand} ${year}  ${year} ${model} with ${numDoors} doors is being driven on the road.");
  }
}

void main(){
Car theCar = Car();
theCar.brand = "Nissan";
theCar.model = "Skyline GTR R34";
theCar.year = 2002;
theCar.numDoors = 2;
theCar.drive();}




End



Q2)  create bankaccount class with blance and accountNumber properties, and method called deposit() and withdraw() that modify the balance property. then create a checkingaccount classs that inherits from bankaccount and has a transactionLimit property. Override the withdraw() method in the checkingAccount class to check if the withdrawal ammount is within the transaction limit before modifing the balance property.

Answer

class BankAccount {
  double balance;
  int accountNumber;

       BankAccount(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

       void withdraw(double amount) {
       balance -= amount;
  }
  }

class CheckingAccount extends BankAccount {
  double transactionLimit;

  CheckingAccount(int accountNumber, double balance, this.transactionLimit) : super(accountNumber, balance);

  @override
      void withdraw(double amount) {
       if (amount <= transactionLimit) {
         balance -= amount;
       } else {
        print('Transaction limit exceeded.');
    }
    }
    }
void main(){

CheckingAccount myAccount = CheckingAccount(54785652658, 1000.0, 500.0);
print("Balance before");print(myAccount.balance); 
myAccount.withdraw(500.0);
print("Transaction");print(myAccount.balance); 
print("Balance After 1st Transaction");print(myAccount.balance); 
myAccount.withdraw(200.0);
print("Balance After 2st Transaction");print(myAccount.balance);



}



End



Q3)   Create a person class with firstName and lastName properties, and a method called fullName() that returns the full name of the person. Then create a Student class that inherits from Person and has a major property. Override the fullName() method in the student class to include the major in the full name


Answer

class Person {
  String firstName="null";
  String lastName="null";

  Person(this.firstName, this.lastName);

  String fullName() {
    return '$firstName $lastName';
  }
  }

class Student extends Person {
  String major;

  Student(String firstName, String lastName, this.major) : super(firstName, lastName);

  @override
  String fullName() {
    return '${super.fullName()} {$major}';
  }
  }
void main(){
 Student student = Student('Azam', 'Khan', 'Computer Science');
print(student.fullName());
}

End
