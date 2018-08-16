#include <stdio.h>
#include <stdlib.h>


    void SetBit(unsigned long *p, unsigned char bitn){

        unsigned char mascara = (1 << bitn);

        *p = *p | mascara;


    }

    void ResetBit(unsigned long *p, unsigned char bitn){

        unsigned char mascara = ~(1 << bitn);

        *p = *p & mascara;


    }

    void ToggletBit(unsigned long *p, unsigned char bitn){

        unsigned char mascara = (1 << bitn);

        *p = *p ^ mascara;


    }

    unsigned char  ReadBit(unsigned long *p, unsigned char bitn){

        unsigned char bit;

        bit = (*p >> bitn) & 1;

        return bit;




    }

    unsigned long  ReadBitSlice(unsigned long *p, unsigned char bitstart, unsigned char bitend){

    unsigned long slice;
    unsigned char size;

    size = 31-bitend;
    slice = (*p << size);
    slice = (slice >> (size + bitstart));

    return slice;


    }

    unsigned char IsLittleEndian (void) {

    unsigned int i = 1;
    char *c = (char*)&i;

    if (*c)
       return 1;
    else
        return 0;


    }

    int main()
    {
        unsigned long p=10;
        unsigned char c;
        unsigned long s;
        SetBit(&p,0); // bit 0 tem valor 0 anteriormente
        printf("%lu \n",p); // terá que mostrar 11
        ResetBit(&p,0); // bit 0 agora tem valor 1
        printf("%lu \n",p); // 10
        ResetBit(&p,1); // bit 1 vale 1
        printf("%lu \n",p); // 8
        ResetBit(&p,0); // bit 0 é 0
        printf("%lu \n",p); // 8
        ToggletBit(&p,1); // troca o bit 1 que é 0
        printf("%lu \n",p); // 10
        c= ReadBit(&p,3); // le o bit 3 que vale 1
        printf("%u \n",c); // 1
        c= ReadBit(&p,0); // le o bit 0 que é 0
        printf("%u \n",c); // 0
        s = ReadBitSlice(&p,1,3); // le dos bits 1 ao 3
        printf("%lu \n",s); // 5
        c = IsLittleEndian();
        printf("%u \n",c);








        return 0;







    }


