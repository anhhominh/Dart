List<int> solve(int size) {
  // your code here
  return size.isOdd
    ? [
        size * size - (size - 1),
        size * size,
        size * size - 3 * (size - 1),
        size * size - 2 * (size - 1),
      ]
    : [
        size * size - 3 * (size - 1),
        size * size - 2 * (size - 1),
        size * size - (size - 1),
        size * size,
      ];;
}