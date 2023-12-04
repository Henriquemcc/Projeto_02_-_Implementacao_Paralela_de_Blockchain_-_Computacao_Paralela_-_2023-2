#ifndef SHA256_H
#define SHA256_H
#include <string>

class SHA256
{
protected:
    typedef unsigned char uint8;
    typedef unsigned int uint32;
    typedef unsigned long long uint64;

    /**
     * Constantes do SHA-256.
     */
    const static uint32 sha256_k[];

    /**
     * Tamanho do bloco de dados usado no SHA-256.
     */
    static const unsigned int SHA224_256_BLOCK_SIZE = (512/8);
public:

    /**
     * Inicializa os membros da classe, incluindo o estado do hash.
     */
    void init();

    /**
     * Atualiza o estado do hash com novos dados da mensagem.
     * @param message
     * @param len
     */
    void update(const unsigned char *message, unsigned int len);

    /**
     * Finaliza o processo de hashing e gera o resultado de hash.
     * @param digest
     */
    void final(unsigned char *digest);

    /**
     * Tamanho do hash de saida produzido pelo algoritmo SHA-256.
     */
    static const unsigned int DIGEST_SIZE = ( 256 / 8);

protected:

    /**
     * Realiza a transformação dos blocos de mensagem.
     * @param message
     * @param block_nb
     */
    void transform(const unsigned char *message, unsigned int block_nb);

    /**
     * Armazena o comprimento total da mensagem processada.
     */
    unsigned int m_tot_len;

    /**
     * Armazena o comprimento atual do bloco de mensagem.
     */
    unsigned int m_len;

    /**
     * Armazena os blocos de mensagem que estão sendo processados.
     */
    unsigned char m_block[2*SHA224_256_BLOCK_SIZE];

    /**
     * Armazena os valores intermediários do hash durante o processamento.
     */
    uint32 m_h[8];
};

/**
 * Calcula o hash SHA-256 de uma string de entrada e retorna o resultado como uma string hexadecimal.
 * @param input
 * @return
 */
std::string sha256(std::string input);

/**
 * Macro auxiliar utilizado na implementação de operações bit a bit usadas no algoritmo SHA-256.
 */
#define SHA2_SHFR(x, n)    (x >> n)

/**
 * Macro auxiliar utilizado na implementação de operações bit a bit usadas no algoritmo SHA-256.
 */
#define SHA2_ROTR(x, n)   ((x >> n) | (x << ((sizeof(x) << 3) - n)))

/**
 * Macro auxiliar utilizado na implementação de operações bit a bit usadas no algoritmo SHA-256.
 */
#define SHA2_ROTL(x, n)   ((x << n) | (x >> ((sizeof(x) << 3) - n)))

/**
 * Macro auxiliar utilizado na implementação de operações bit a bit usadas no algoritmo SHA-256.
 */
#define SHA2_CH(x, y, z)  ((x & y) ^ (~x & z))

/**
 * Macro auxiliar utilizado na implementação de operações bit a bit usadas no algoritmo SHA-256.
 */
#define SHA2_MAJ(x, y, z) ((x & y) ^ (x & z) ^ (y & z))

/**
 * Macro auxiliar utilizado na implementação de operações bit a bit usadas no algoritmo SHA-256.
 */
#define SHA256_F1(x) (SHA2_ROTR(x,  2) ^ SHA2_ROTR(x, 13) ^ SHA2_ROTR(x, 22))

/**
 * Macro auxiliar utilizado na implementação de operações bit a bit usadas no algoritmo SHA-256.
 */
#define SHA256_F2(x) (SHA2_ROTR(x,  6) ^ SHA2_ROTR(x, 11) ^ SHA2_ROTR(x, 25))

/**
 * Macro auxiliar utilizado na implementação de operações bit a bit usadas no algoritmo SHA-256.
 */
#define SHA256_F3(x) (SHA2_ROTR(x,  7) ^ SHA2_ROTR(x, 18) ^ SHA2_SHFR(x,  3))

/**
 * Macro auxiliar utilizado na implementação de operações bit a bit usadas no algoritmo SHA-256.
 */
#define SHA256_F4(x) (SHA2_ROTR(x, 17) ^ SHA2_ROTR(x, 19) ^ SHA2_SHFR(x, 10))

/**
 * Macro auxiliar utilizado na implementação de operações bit a bit usadas no algoritmo SHA-256.
 */
#define SHA2_UNPACK32(x, str)                 \
{                                             \
    *((str) + 3) = (uint8) ((x)      );       \
    *((str) + 2) = (uint8) ((x) >>  8);       \
    *((str) + 1) = (uint8) ((x) >> 16);       \
    *((str) + 0) = (uint8) ((x) >> 24);       \
}

/**
 * Macro auxiliar utilizado na implementação de operações bit a bit usadas no algoritmo SHA-256.
 */
#define SHA2_PACK32(str, x)                   \
{                                             \
    *(x) =   ((uint32) *((str) + 3)      )    \
           | ((uint32) *((str) + 2) <<  8)    \
           | ((uint32) *((str) + 1) << 16)    \
           | ((uint32) *((str) + 0) << 24);   \
}
#endif
