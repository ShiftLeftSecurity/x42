#include <iostream>
using namespace std;

int main(int argc, char *argv[]) {
  if (argc > 1 && std::string(argv[1]) == "42") {
    std::cerr << "It depends!\n";
    exit(42);
  }
  std::cout << "What is the meaning of life?\n";
  exit(0);
}
