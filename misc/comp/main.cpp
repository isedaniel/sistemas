#include <bits/stdc++.h>

using namespace std;

int main()
{
    // accelerate input
    ios::sync_with_stdio(0);
    cin.tie(0);

    // set files to stdin/stdout
    // freopen("input.txt", "r", stdin);
    // freopen("output.txt", "w", stdout);

    // get line to enter
    // string line;
    // getline(cin, line);
    // cout << line << '\n';

    // short types
    typedef long long ll;
    ll i = 123456789LL;
    cout << i << '\n';

    typedef vector<int> vi;
    vi v = {};

// preprocessor macros
#define PB push_back
    v.PB(1);
    v.PB(2);
    v.PB(3);

    for (int num : v)
    {
        cout << num << '\n';
    }

// macro for-loop
#define REP(i, a, b) for (int i = a; i <= b; i++)

    REP(i, 1, 5)
    {
        cout << i << '\n';
    }

    // macro square
    // () for avoid problems
#define SQ(a) (a) * (a)
    int n = SQ(3 + 3);

    cout << n << '\n'; // 36
}
