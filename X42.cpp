#include <iostream>
using namespace std;

int main(int argc, char *argv[]) {
  if (argc > 1 && std::string(argv[1]) == "42") {
    throw std::runtime_error("It depends!");
  }
  std::cout << "What is the meaning of life?\n";
  return 0;
}
