#include <iostream>
#include<math.h>
#include <cmath>
#include <cstdio>
using namespace std;

bool isPerfectSquare(long double x)
{
    // Find floating point value of
    // square root of x.
    if (x >= 0) {

        long long sr = sqrt(x);

        // if product of square root
        //is equal, then
        // return T/F
        return (sr * sr == x);
    }
    // else return false if n<0
    return false;
}
int cal(int l, int r)
{
    int counter = 0;
    for (int counter1 = l; counter1 <= r; counter1++)
    {
        if (isPerfectSquare(counter1))
        {
            counter++;
        }
    }
    return(counter);
}

int main()
{
    int n, l, r;
    int* ans;
    cin >> n;
    ans = new int[n];
    for (int counter1 = 0; counter1 < n; counter1++)
    {
        cin >> l >> r;
        ans[counter1] = cal(l, r);
    }
    for (int counter1 = 0; counter1 < n; counter1++)
    {
        cout << ans[counter1] << endl;
    }
    system("pause");
    return 0;
}
