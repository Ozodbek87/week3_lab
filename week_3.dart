// Category 5

void main() {
    int a = 5;
    int b = 3;
    int c = a * b;
    print(c);
}

class Validator {
    bool isValid(String value) {
        if(value.isEmpty) {
            throw ArgumentError('Empty value');
        }
        return true;
    }
}

void main() {
    print('Hi');
}

class Old {
    @deprecated
    void sayHi() {
        print('Hi');
    }
}

class New extends Old {
    @override
    void sayHi() {
        print('Hello');
    }
}

class MyApi {
    String greet(String name) {
        return 'Hi $name';
    }

    int add(int a, int b) {
        return a + b;
    }
}

// Category 6

class Person {
    String name;
    int age;
    Person(this.name, this.age);
}

void main() {
    Person p = Person('Ali', 20);
    print(p.name);
    print(p.age);
}

class Age {
    int value;
    Age(int v) : value = v {
        if(v<0) {
            throw ArgumentError('Bad age');
        }
    }
}

class Single {
    static final Single _one = Single._inside();
    Single._inside();
    factory Single() {
        return _one;
    }
}

class Student {
    int _age = 0;
    int get age {
        return _age;
    }
    set age(int v) {
        if(v<0) {
            v = 0;
        }
        _age = v;
    }
}

class UserData {
    final String name;
    final int age;
    const UserData(this.name, this.age);
}

void main() {
    const u = UserData('Ali', 20);
    print(u.name);
    print(u.age);
}

// Category 7

enum Day {
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday
}

void main() {
    for (var d in Day.values) {
        print(d);
    }
}

enum Day2 {
    monday,
    sunday
}

String showDay(Day2 d) {
    switch(d) {
        case Day2.monday:
            return 'Monday';
        case Day2.sunday:
            return 'Sunday';
    }
}

abstract class Talk {
    void speak();
}

enum Pet implements Talk {
    dog,
    cat;

    @override
    void speak() {
        if(this==Pet.dog) {
            print('Woof');
        } else {
            print('Meow');
        }
    }
}

enum Day3 {
    monday,
    sunday
}

void main() {
    Day3 d = Day3.values.byName('monday');
    print(d);
}

enum Level {
    low(1),
    high(2);

    final int value;
    const Level(this.value);
    static Level fromValue(int v) {
        if(v==1) {
            return Level.low;
        } else {
            return Level.high;
        }
    }
}

// Category 8

class Animal {
    void makeSound() {
        print('Some sound');
    }
}

class Dog extends Animal {
    @override
    void makeSound() {
        print('Woof');
    }
}

void main() {
    Dog d = Dog();
    d.makeSound();
}

class Vehicle2 {
    String brand;
    Vehicle2(this.brand);
}

class ElectricCar2 extends Vehicle2 {
    ElectricCar2(super.brand);
}

class Shape {
    void draw() {
        print('Shape');
    }
}

class Polygon extends Shape {
    void sides() {
        print('Many sides');
    }
}

class Triangle extends Polygon {
    @override
    void draw() {
        print('Triangle');
    }
}

abstract class Animal2 {
    void makeSound();
    void sleep() {
        print('Sleeping');
    }
}

class Dog2 extends Animal2 {
    @override
    void makeSound() {
        print('Woof');
    }
}

final class Cat {
    void meow() {
        print('Meow');
    }
}

base class Animal3 {
    void eat() {
        print('Eating');
    }
}

class Dog3 extends Animal3 {
    void bark() {
        print('Woof');
    }
}

// Category 9

abstract class DBConnector {
    void connect();
}

class MySQLConnector implements DBConnector {
    @override
    void connect() {
        print('Connected');
    }
}

mixin Flyable {
    void fly() {
        print('Flying');
    }
}

class Bird with Flyable {
}

void main() {
    Bird b = Bird();
    b.fly();
}

mixin Walker {
    void walk() {
        print('Walking');
    }
}

mixin Swimmer {
    void swim() {
        print('Swimming');
    }
}

mixin Flyable2 {
    void fly() {
        print('Flying');
    }
}

class Duck with Walker, Swimmer, Flyable2 {
}

class Animal4 {
    void eat() {
        print('Eating');
    }
}

mixin Walker2 on Animal4 {
    void walk() {
        print('Walking');
    }
}

class Dog4 extends Animal4 with Walker2 {
}

abstract class Speak {
    void talk();
}

class Human implements Speak {
    @override
    void talk() {
        print('Hi');
    }
}

mixin Loud {
    void shout() {
        print('Hey');
    }
}

class Man with Loud {
}

// Category 10

abstract class Shape2 {
    double area();
}

class Circle extends Shape2 {
    double r;
    Circle(this.r);
    @override
    double area() {
        return 3.14 * r * r;
    }
}

class Rectangle extends Shape2 {
    double w;
    double h;
    Rectangle(this.w, this.h);
    @override
    double area() {
        return w * h;
    }
}

void main() {
    List<Shape2> shapes = [Circle(2), Rectangle(2, 3)];
    for (var s in shapes) {
        print(s.area());
    }
}

void main() {
    dynamic x = 'Hello';

    if(x is String) {
        print('It is String');
    }
    String y = x as String;
    print(y);
}

class Repository<T> {
    List<T> items = [];
    void add(T item) {
        items.add(item);
    }
    T getFirst() {
        return items[0];
    }
}

void main() {
    Repository<String> r = Repository<String>();
    r.add('Hi');
    print(r.getFirst());
}

sealed class Shape3 {
}

class Circle3 extends Shape3 {
}

class Square3 extends Shape3 {
}

void main() {
    Shape3 s = Circle3();
    if(s is Circle3) {
        print('Circle');
    } else if(s is Square3) {
        print('Square');
    }
}

abstract class PayWay {
    void pay(int amount);
}

class CardPay implements PayWay {
    @override
    void pay(int amount) {
        print('Card $amount');
    }
}

class CashPay implements PayWay {
    @override
    void pay(int amount) {
        print('Cash $amount');
    }
}

class Shop {
    PayWay way;
    Shop(this.way);
    void checkout(int amount) {
        way.pay(amount);
    }
}

void main() {
    Shop s = Shop(CardPay());
    s.checkout(100);
}

// Category 11

Future<String> getUser() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Ali';
}

void main() async {
    String u = await getUser();
    print(u);
}

Future<String> one() async {
    await Future.delayed(Duration(seconds: 1));
    return 'One';
}

Future<String> two() async {
    await Future.delayed(Duration(seconds: 1));
    return 'Two';
}

Future<String> three() async {
    await Future.delayed(Duration(seconds: 1));
    return 'Three';
}

void main() async {
    List<String> all = await Future.wait([one(), two(), three()]);
    print(all);
}

void main() {
    var s = Stream.periodic(Duration(seconds: 1));
    int c = 0;
    var sub;
    sub = s.listen((t) {
        print(t);
        c++;
        if(c==5) {
            sub.cancel();
        }
    });
}

void main() async {
    var s = Stream.fromIterable([1, 1, 2, 3, 4, 4]);
    var t = s.map((x) {
        return x * 2;
    }).where((x) {
        return x > 4;
    }).distinct();
    await for (var v in t) {
        print(v);
    }
}

void main() {
    var s = Stream.fromIterable([1, 2, 3]);
    s.map((x) {
        if(x==2) {
            throw Exception('Bad');
        }
        return x;
    }).handleError((e) {
        print('Error');
    }).listen((v) {
        print(v);
    });
}

// Category 12

void main() {
    try {
        int x = 5 ~/ 0;
        print(x);
    } on UnsupportedError catch(e) {
        print('Cannot divide by zero');
    }
}

void check(String? s) {
    if(s==null || s.isEmpty) {
        throw ArgumentError('Bad string');
    }
    print(s);
}

void main() {
    check('Hi');
}

void main() {
    try {
        int x = int.parse('abc');
        print(x);
    } on FormatException catch(e) {
        print('Bad format');
    } catch(e) {
        print('Other error');
    }
}

void main() {
    try {
        int x = int.parse('abc');
        print(x);
    } catch(e, s) {
        print(e);
        print(s);
    }
}

void checkNum(int x) {
    try {
        if(x<0) {
            throw ArgumentError('Bad');
        }
    } catch(e) {
        print('Caught inside');
        rethrow;
    }
}

void main() {
    try {
        checkNum(-1);
    } catch(e) {
        print('Caught outside');
    }
}