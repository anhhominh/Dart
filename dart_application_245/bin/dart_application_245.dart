import 'dart:math';

var rng = Random();

List<List<int>> randomGradient(){
  return List<List<int>>.generate(100000, (int index) {
    var x = rng.nextDouble();
    var y = rng.nextDouble();
    return List.of([(x*x*1000).toInt(), (y*y*1000).toInt()]);
  });
}
