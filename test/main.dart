import 'dart:developer';

void main() {
  final t = Test('10')..b = '20';

  final c = t.toString();
  log('c -> $c');
}

class Test {
  Test(this.a);
  late String b;

  final String a;
}
