import "package:test/test.dart";
import "dart:math";

//tìm tổng các ước của một số
int divisors(num){
   int result = 0;
    if(num == 1)
      return result;
    for (int i=2; i<=sqrt(num); i++)
    {
        if (num%i==0)
        {
            if (i==(num/i).toInt())
                result += i;
            else
                result += (i + num/i).toInt();
        }
    }
    return (result + 1);
}

List<int>? buddy(int start, int limit) {
    for(int n = start ; n < limit + 1 ; n++){
        int m = divisors(n) - 1;
        if( m > n && divisors(m) == n + 1)
            return [n, m];
    }
    return null;
}

void main() {
  test('simple tests', () {
    expect(buddy(10, 50), equals([48, 75]));
    expect(buddy(200, 1000), equals(null));
    expect(buddy(57345, 90061), equals([62744, 75495]));
  });
}