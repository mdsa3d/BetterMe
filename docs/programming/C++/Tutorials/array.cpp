#include<iostream>
#include<list>
#include <iterator>
using namespace std;

// function for printing the elements in a list
void showlist(list<int> g)
{
    list<int>::iterator it;
    cout << '[';
    for (it = g.begin(); it != g.end(); ++it)
        cout << *it;
        if (it < g.end()) {
            cout <<' ';
        } 
    cout << ']'<<endl;
}

int main() {
    list<int> clist1;
    for (int i = 0; i < 10; ++i) {
        clist1.push_back(i * 2);
        // clist1.push_front(i * 3);
    };
    cout << "List 1 (clist1) is : ";
    showlist(clist1);
}