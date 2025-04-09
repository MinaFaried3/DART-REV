main() {
  bee a = bee(2);
  bee b = bee(3);
  bee c = a.add(b);
  print(c.num);
  bee d = c + a;
  print(d.num);
}

class bee {
  final int num;
  bee(this.num);

  add(bee b) {
    return bee(b.num + this.num);
  }

  @override
  operator +(bee b) {
    return bee(b.num + this.num);
  }
}
