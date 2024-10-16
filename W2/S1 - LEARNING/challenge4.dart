class Distance {
  final double _m;

  Distance.km(double km) : _m = km * 1000;
  Distance.m(double m) : _m = m;

  double get cm => _m;
  double get km => _m / 1000;

//The + operator is overloaded to allow adding two Distance objects
  Distance operator +(Distance other) {
    return Distance.m(this._m + other._m);
  }

  @override
  String toString() {
    return 'Distance: ${_m} m';
  }
}

void main() {
  Distance d1 = Distance.km(5);
  Distance d2 = Distance.m(1000);
  print("d1 = $d1");
  print("d2 = $d2");
  print("The result is =${(d1 + d2).km}");
}
