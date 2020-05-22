void main() {
//   print("Hello World");
//   int a = 2;
//   String b = "haha";
//   bool flag = true;
//   var varA = "stua";

//   String name = "TUAN";
//   print('Toi ten la: ${name.toLowerCase()}');
  Student student = new Student("1", name: "Tuan");
  print(student.id);
  print(student.name);
  print(student.address);
  print('${student.run()}');
  print('${student.asiaHuman()}');
}



// Tính bao đóng
// Tính thừa kế
// Tính đa hình
// Tính trừu tượng



class Person {
  String _id;
  String _name;
  String _address;

//   Person(String id, {String name, String address}) {
//     _id = id;
//     _name = name;
//     _address = address;
//   }

  Person(_id, {String name, String address}) {
    _name = name;
    _address = address;
  }

//   void setId(String id) {
//     _id = id;
//   }

//   String getId() {
//     return _id;
//   }

  set id(String id) => _id = id;

  String get id => _id;

  set name(String name) => _name = name;

  String get name => _name;

  set address(String address) => _address = address;

  String get address => _address;

}



class Animal {
  int _foot;
  set foot(int foot) => _foot = foot;
  get foot => _foot;

  run() {
    return "run";
  }
}



class Student extends Person with Animal, Asia {
  String _classroom;

  // Mixins
  Student(_classroom, {String id, String name, String address}) : super(id, name: name, address: address);

  set classroom(String classroom) => _classroom = classroom;
  get classroom => _classroom;

  run() {
    return '${super.run()} by 2 foots';
  }

  asiaHuman() {
    return "This is Asia human";
  }
}



// Khác nhau giữa đa hình và kế thừa
// Đa hình => Ko bắt buộc thực hiện ghi đè/ định nghĩa lại phương thức
// Trừu tượng => Bắt buộc thực hiện ghi đè/ định nghĩa lại phương thức



abstract class Asia {
  bool _isAsia;

  set isAsia(bool isAsia) => _isAsia = isAsia;
  get isAsia => _isAsia;

  asiaHuman();
}