/////////////////////////////////////////////
// compilation: c++ -o pgcd pgcd.cc
// execution: ./pgcd
/////////////////////////////////////////////

/*
 *
 * coucou
 */


#include <iostream>
using namespace std;

int main(int argn, char **argv){
  int a;
  int b;
  std::cout << "Entrer a: ";
  std::cin >> a;
  std::cout << "Entrer b: ";
  std::cin >> b;

  while(true){
    if (b > a){
      b = b % a;
      if (b==0) break;
    }
    else{
      a = a % b;
      if (a == 0) break;
    }
  }
  std::cout << "pgcd: ";
  if (a == 0)
    std::cout << b << std::endl;
  else
    std::cout << a << std::endl;

  65498;
  654.654;
  894e-456;
  -654E+34;
  31.416e-10;

  "drÃ´le de \"pr\a \\ogramme";
}