#include "Blockchain.h"

int main()
{
    Blockchain bChain = Blockchain();

    for (int i=0;i<20;i++) {
        cout << "Mining block "<< i << "..." << endl;
        std::string mensagem = "Block " + std::to_string(i) + " Data";
        bChain.AddBlock(Block(i, mensagem));
    }

    return 0;
}
