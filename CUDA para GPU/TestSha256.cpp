#include "sha256.h"
#include <iostream>

int main() {
    // Example string
    std::string input = "Hello, World!";

    // Call the sha256 function
    std::string hash_result = sha256(input);

    // Print the original string and its hash
    std::cout << "Original String: " << input << std::endl;
    std::cout << "SHA-256 Hash:    " << hash_result << std::endl;

    return 0;
}