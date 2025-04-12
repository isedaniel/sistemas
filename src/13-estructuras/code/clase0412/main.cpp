#include <iostream>
#include <queue>

using namespace std;

int main()
{
    int nums[] = {10, 20, 30};

    queue<int> q;
    for (int num: nums)
    {
        q.push(num);
    }

    int size = q.size();
    for (int i=0; i<size; i++)
    {
        cout << q.front() << '\n';
        q.pop();
    }

    return 0;
}
