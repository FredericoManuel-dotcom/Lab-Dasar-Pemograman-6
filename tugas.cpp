#include <iostream>
using namespace std;

int main() {

    for(int i = 1; i <= 7; i++) {        // jumlah baris
        for(int j = 1; j <= i; j++) {    // jumlah bintang mengikuti baris
            cout << "*";
        }
        cout << endl;
    }

    return 0;
}