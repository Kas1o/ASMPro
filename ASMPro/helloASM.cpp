
#include <stdio.h>
#include <iostream>

using namespace std;

extern "C" int ABS();
extern "C" int BBS();
void PB(int i) 
{
	for (int s = 7; s >= 0; s--)
		cout << ((i >> s) & 1);

	cout << endl;
}
int main() {


	int a = 1 + 1;


	cout << ABS() << endl;
	//PB(ABS());
}