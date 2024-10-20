enum Skill { FLUTTER, DART, OTHER }

class Address {
  String _street;
  String _city;
  String _zipCode;

  Address(this._street, this._city, this._zipCode);

  get street => _street;
  get city => _city;
  get zipCode => _zipCode;

  @override
  String toString() {
    return '(Street: $_street, City: $_city, Zip Code: $_zipCode)';
  }
}

class Employee {
  String _name;
  final double _baseSalary; //should be dynamic maybe use const to do it
  int _yearOfExperience;
  String _typeOfEmployee;
  Skill _skill;
  List<Skill> skills = []; //one employee have many skill
  Address _address;

  Employee(this._name, this._baseSalary, this._yearOfExperience, this._skill,
      this._address, this._typeOfEmployee) {
    skills.add(_skill);
  }

  Employee.mobileDeveloper(
      String _name, double _baseSalary, int _yearOfExperience, Address _address)
      : this(_name, _baseSalary, _yearOfExperience, Skill.FLUTTER, _address,
            'Mobile Development');
  Employee.webDeveloper(
      String _name, double _baseSalary, int _yearOfExperience, Address _address)
      : this(_name, _baseSalary, _yearOfExperience, Skill.OTHER, _address,
            'Web Development');

  void addSkill(Skill newSkill) {
    this.skills.add(newSkill);
  }

  get name => _name;
  get baseSalary => _baseSalary;
  get yearOfExperience => _yearOfExperience;
  get skill => _skill;
  get address => _address;
  get typeOfEmployee => _typeOfEmployee;


  double compute() {
    double total_salary = _baseSalary;

    total_salary += (_yearOfExperience * 200);
    for (Skill skill in skills) {
      switch (skill) {
        case Skill.DART:
          total_salary += 300;
          break;
        case Skill.FLUTTER:
          total_salary += 500;
          break;
        case Skill.OTHER:
          total_salary += 100;
          break;
        default:
          total_salary += 50;
      }
    }
       return total_salary;
  }

  void printDetails() {
    String skillList =
        skills.map((skill) => skill.toString().split('.').last).join(', ');
    print(
        'Employee: $_name,\n Base Salary: \$${_baseSalary},\n Year Of Experience: ${_yearOfExperience} year(s),\n Skills: $skillList,\n Address: ${_address},\n TypeOfEmployee: $_typeOfEmployee,\n Total Salary: \$${compute()}\n');
  }

  

}

void main() {
  Address address = Address("st123", "pp", "123456");

  Employee employee = Employee("ka", 400, 1, Skill.FLUTTER, address, "web");
  Employee emp1 = Employee.mobileDeveloper('Sokea', 5000, 2, Address("st147", "KPS", "855"));
  Employee emp2 = Employee.webDeveloper('Sok', 40000, 5, address);
  employee.printDetails();
  emp1.printDetails();
  emp2.printDetails();
  employee.addSkill(Skill.DART);
  employee.printDetails();
}
