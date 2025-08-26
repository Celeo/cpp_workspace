#include <iostream>

int main() {
  int n{0};
  std::cout << "Enter a number: ";
  std::cin >> n;
  std::cout << "Double that number is: " << n * 2 << "\n";
  std::cout << "Triple that number is: " << n * 3 << std::endl;

  return 0;
}
